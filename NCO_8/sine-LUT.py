import math
import time

width = 8
n = pow(2, width)
lut = []

for i in range(n):
    angle = 2*math.pi*(i/256)
    sine_value = math.sin(angle)

    scaled_value = round((sine_value + 1) * 127.5)
    lut.append(scaled_value)
    print(f'"{format(scaled_value, '08b')}", -- LUT[{n}] == {scaled_value}')

with open(f'{time.strftime("%Y_%m_%d-%I_%M_%S_%p")}.txt', "w") as file:
    for i in range(len(lut)):
        file.write(f'"{format(lut[i], '08b')}", -- LUT[{i}] == {lut[i]}\n')