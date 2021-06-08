import os
import time

def measure_temp():
    return os.popen("vcgencmd measure_temp").readline()


def measure_voltage():
    return os.popen("vcgencmd measure_volts").readline()


print('''
Raspberry Pi Foundation recommends that the temperature of your Raspberry Pi \
device should be below 85 degrees Celsius for it to work properly. That's the\
maximum limit. But it would start throttling at 82 degrees Celsius.
''')
while True:
    print(measure_temp() + measure_voltage())
    time.sleep(3)
