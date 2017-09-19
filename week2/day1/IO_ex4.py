# Write program that takes a JSON file name as input and plots the X,Y data.
# Exchange JSON data with others to test your program more thoroughly.

import matplotlib.pyplot as plot
import json

with open(input("Load a JSON file. "), "r") as file_handle:
    coords = json.load(file_handle)

xs = []
ys = []

i = 0
while i < len(coords["coords"]):
    xs.append(coords["coords"][i][1])
    ys.append(coords["coords"][i][0])
    i += 1
print("xs:", xs)
print("ys:", ys)


plot.plot(xs, ys)
plot.show()
