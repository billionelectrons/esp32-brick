#include "firmware_update.h"
#include "Arduino.h"

#include <Update.h>
#include <tools.h>
#include <SPIFFS.h>

#include "modules/task_scheduler/task_scheduler.h"

extern AsyncWebServer server;
extern TaskScheduler task_scheduler;

extern bool firmware_update_allowed;

void factory_reset()
{
    for(int i = 0; i < 5; ++i) {
        digitalWrite(GREEN_LED, true);
        delay(200);
        digitalWrite(GREEN_LED, false);
        delay(200);
    }
    SPIFFS.end();
    SPIFFS.format();
    ESP.restart();
}

FirmwareUpdate::FirmwareUpdate() {

}

void FirmwareUpdate::setup()
{
    initialized = true;
}

void handleUpdateChunk(int command, AsyncWebServerRequest *request, size_t chunk_index, uint8_t *data, size_t chunk_length, bool final) {
    if(chunk_index == 0 && !Update.begin(UPDATE_SIZE_UNKNOWN, command)) {
        request->send(400, "text/html", Update.errorString());
        return;
    }

    // The firmware files are merged with the bootloader, partition table and slot configuration bins.
    // The bootloader starts at offset 0x1000, which is the first byte in the firmware file.
    // The first firmware slot (i.e. the one that is flashed over USB) starts at 0x10000.
    // So we have to skip the first 0x10000 - 0x1000 bytes, after them the actual firmware starts.
    const size_t firmware_offset = 0x10000 - 0x1000;
    if (chunk_index + chunk_length < firmware_offset) {
        return;
    }

    uint8_t *start = data;
    size_t length = chunk_length;

    if (chunk_index < firmware_offset) {
        size_t to_skip = firmware_offset - chunk_index;
        start += to_skip;
        length -= to_skip;
    }

    if(Update.write(start, length) != length) {
        request->send(400, "text/html", String("Failed to write with length") + length + ": " + Update.errorString());
        return;
    }

    if(final) {
        if(!Update.end(true)) {
            request->send(400, "text/html", String("Failed to finish writing update: ") + Update.errorString());
            return;
        }
    }
}

void FirmwareUpdate::register_urls()
{
    server.on("/update", HTTP_GET, [](AsyncWebServerRequest *request){
        request->send(200, "text/html", "<form method='POST' action='/flash_firmware' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update Firmware'></form> <form method='POST' action='/flash_spiffs' enctype='multipart/form-data'><input type='file' name='update'><input type='submit' value='Update SPIFFS'></form>");
    });

    server.on("/flash_firmware", HTTP_POST, [this](AsyncWebServerRequest *request){
        if (!firmware_update_allowed) {
            AsyncWebServerResponse *response = request->beginResponse(400, "text/plain", "firmware_update.script.vehicle_connected");
            response->addHeader("Connection", "close");
            request->send(response);
            return;
        }

        AsyncWebServerResponse *response = request->beginResponse(Update.hasError() ? 400: 200, "text/plain", Update.hasError() ? Update.errorString() : "Update OK");
        response->addHeader("Connection", "close");

        if(!Update.hasError()) {
            task_scheduler.scheduleOnce("flash_firmware_reboot", [](){ESP.restart();}, 3000);
        }

        request->send(response);
    },[](AsyncWebServerRequest *request, String filename, size_t index, uint8_t *data, size_t len, bool final){
        if (!firmware_update_allowed) {
            if(final) {
                AsyncWebServerResponse *response = request->beginResponse(413, "text/plain", "firmware_update.script.vehicle_connected");
                response->addHeader("Connection", "close");
                request->send(response);
            }
            return;
        }
        handleUpdateChunk(U_FLASH, request, index, data, len, final);
    });

    server.on("/flash_spiffs", HTTP_POST, [this](AsyncWebServerRequest *request){
        AsyncWebServerResponse *response = request->beginResponse(Update.hasError() ? 400: 200, "text/plain", Update.hasError() ? Update.errorString() : "Update OK");
        response->addHeader("Connection", "close");

        if(!Update.hasError()) {
            task_scheduler.scheduleOnce("flash_spiffs_reboot", [](){ESP.restart();}, 3000);
        }

        request->send(response);
    },[](AsyncWebServerRequest *request, String filename, size_t index, uint8_t *data, size_t len, bool final){
        handleUpdateChunk(U_SPIFFS, request, index, data, len, final);
    });

    AsyncCallbackJsonWebHandler *factory_reset_handler = new AsyncCallbackJsonWebHandler("/factory_reset", [this](AsyncWebServerRequest *request, JsonVariant &json){
        if(!json["do_i_know_what_i_am_doing"].is<bool>()) {
            request->send(400, "text/html", "you don't seem to know what you are doing");
            return;
        }

        if(json["do_i_know_what_i_am_doing"].as<bool>()) {
            task_scheduler.scheduleOnce("factory_reset", [](){
                Serial.println("Factory reset requested");
                factory_reset();
            }, 3000);
            request->send(200, "text/html", "Factory reset initiated");
        } else {
            request->send(400, "text/html", "Factory reset NOT initiated");
        }
    });
    server.addHandler(factory_reset_handler);
}

void FirmwareUpdate::onEventConnect(AsyncEventSourceClient *client)
{

}

void FirmwareUpdate::loop()
{
    bool btn0 = digitalRead(0);

    if(btn0 != last_btn_value) {
        last_btn_change = millis();
    }

    last_btn_value = btn0;

    if(!btn0 && deadline_elapsed(last_btn_change + 10000)) {
        Serial.println("IO0 button was pressed for 10 seconds. Resetting to factory defaults.");
        factory_reset();
    }
}
