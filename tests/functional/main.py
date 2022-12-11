#!/usr/bin/python3

import RPi.GPIO as GPIO
import sys
import serial
import time

# ESP32 GPIOs
# Valid for Unijoysticle2 A500
uni2_a500_gpios = {
    'j1': {
        'up': 26,
        'down': 18,
        'left': 19,
        'right': 23,
        'fire': 14,
        'fire_5': 33,
        'fire_9': 16,
    },
    'j2': {
        'up': 27,
        'down': 25,
        'left': 32,
        'right': 17,
        'fire': 13,
        'fire_5': 21,
        'fire_9': 22,
    },
    'leds': {
        'green': 5,
        'red': 12,
        'blue': 15,
    },
    'push_buttons': {
        'mode': 34,
        'swap': 35,
    },
}

# Valid for Unijoysticle2+
uni2_plus_gpios = {
    'j1': {
        'up': 26,
        'down': 18,
        'left': 19,
        'right': 23,
        'fire': 14,
        'pin5': 33,
        'pin9': 16,
    },
    'j2': {
        'up': 27,
        'down': 25,
        'left': 32,
        'right': 17,
        'fire': 13,
        'pin5': 21,
        'pin9': 22,
    },
    'leds': {
        'green': 5,
        'red': 12,
        # Not Blue LED
    },
    'push_buttons': {
        'mode': 34,
        # No swap button
    },

}


# RPi GPIOs
rpi_gpios = {
    'j1': {
        'up': 21,
        'down': 16,
        'left': 12,
        'right': 1,
        'fire': 20,
        'pin5': 8,  # Fire 3
        'pin9': 7,  # Fire 2
    },
    'j2': {
        'up': 11,
        'down': 24,
        'left': 23,
        'right': 18,
        'fire': 25,
        'pin5': 14,  # Fire 3
        'pin9': 15,  # Fire 2
    },
    'leds': {
        'green': 2,
        'red': 3,
    },
}


def esp32_set_gpio(ser, gpio: int, level: int) -> None:
    s = f"gpio_set {gpio} {level}\r\n"
    ser.write(bytes(s, 'utf-8'))
    # Sending the command via Serial + time to for the ESP32 to process it
    # might take a few milliseconds.
    # This "wait" is kind of a "sync"
    time.sleep(0.1)


def esp32_get_gpio(ser, gpio: int) -> int:
    s = f"gpio_get {gpio}\r\n"
    ser.write(bytes(s, 'utf-8'))

    # First line is Echo, ignore it
    _ = ser.readline()
    line = ser.readline()

    # Output should have this format:
    #   GPIO 26 = 0
    # Convert it to string, split it by ' ' so we'll have for entries:

    r = line.decode('utf-8')
    r.strip()
    _, number, _, lvl = r.split(' ')
    assert (number, gpio)
    return lvl


def setup_gpios():
    GPIO.setmode(GPIO.BCM)

    # LEDs are output
    # J1, J2 are input

    for k in rpi_gpios['leds']:
        pin = rpi_gpios['leds'][k]
        GPIO.setup(pin, GPIO.OUT)
        GPIO.output(pin, GPIO.LOW)

    for k in rpi_gpios['j1']:
        pin = rpi_gpios['j1'][k]
        GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    for k in rpi_gpios['j2']:
        pin = rpi_gpios['j2'][k]
        GPIO.setup(pin, GPIO.IN, pull_up_down=GPIO.PUD_UP)


def test_leds():
    green_pin = rpi_gpios['leds']['green']
    red_pin = rpi_gpios['leds']['red']

    print('Testing Green LED...')
    for _ in range(5):
        GPIO.output(green_pin, GPIO.HIGH)
        time.sleep(0.1)
        GPIO.output(green_pin, GPIO.LOW)
        time.sleep(0.1)

    print('Testing RED LED...')
    for _ in range(5):
        GPIO.output(red_pin, GPIO.HIGH)
        time.sleep(0.1)
        GPIO.output(red_pin, GPIO.LOW)
        time.sleep(0.1)


def main():

    ser = serial.Serial(sys.argv[1], 115200, timeout=1)
    print(ser.name)

    setup_gpios()
    test_leds()

    esp32_set_gpio(ser, uni2_a500_gpios['j1']['up'], 1)
    lvl = GPIO.input(rpi_gpios['j1']['up'])
    print(f'GPIO should be 0 = {lvl}')

    esp32_set_gpio(ser, uni2_a500_gpios['j1']['up'], 0)
    lvl = GPIO.input(rpi_gpios['j1']['up'])
    print(f'GPIO should be 1 = {lvl}')

    ser.close()
    GPIO.cleanup()


if __name__ == '__main__':
    exit(main())
