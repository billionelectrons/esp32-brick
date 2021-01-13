#!/usr/bin/python3 -u

import re
import argparse
import socket

BASE58 = '123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ'

PRINTER_HOST = 'BP730i'
PRINTER_PORT = 9100

QR_CODE_FORMAT = 'W288,29,5,2,M,8,4,{0},0\r'
QR_CODE_LENGTH = 49

SSID_PLACEHOLDER = b'esp32-XXXXXX'

PASSPHRASE_PLACEHOLDER = b'ZZZZ-ZZZZ-ZZZZ-ZZZZ'

def print_esp32_label(ssid, passphrase):
    if re.match('^esp32-[{0}]{{3,6}}$'.format(BASE58), ssid) == None:
        raise Exception('Invalid SSID: {0}'.format(ssid))

    if re.match('^[{0}]{{4}}-[{0}]{{4}}-[{0}]{{4}}-[{0}]{{4}}$'.format(BASE58), passphrase) == None:
        raise Exception('Invalid passphrase: {0}'.format(passphrase))

    with open('esp32.prn', 'rb') as f:
        data = f.read()

    qr_code_command = QR_CODE_FORMAT.format(QR_CODE_LENGTH).encode('ascii')

    if data.find(qr_code_command) < 0:
        raise Exception('QR code command missing in EZPL file')

    data = data.replace(qr_code_command, QR_CODE_FORMAT.format(QR_CODE_LENGTH - len(SSID_PLACEHOLDER) + len(ssid)).encode('ascii'))

    if data.find(SSID_PLACEHOLDER) < 0:
        raise Exception('SSID placeholder missing in EZPL file')

    data = data.replace(SSID_PLACEHOLDER, ssid.encode('ascii'))

    if data.find(PASSPHRASE_PLACEHOLDER) < 0:
        raise Exception('Passphrase placholder missing in EZPL file')

    data = data.replace(PASSPHRASE_PLACEHOLDER, passphrase.encode('ascii'))

    with socket.create_connection((PRINTER_HOST, PRINTER_PORT)) as s:
        s.send(data)

def main():
    parser = argparse.ArgumentParser()

    parser.add_argument('ssid')
    parser.add_argument('passphrase')

    args = parser.parse_args()

    print_esp32_label(args.ssid, args.passphrase)

if __name__ == '__main__':
    main()
