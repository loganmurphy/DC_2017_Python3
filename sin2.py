import math
from numpy import arange
import matplotlib.pyplot as plot
xs = arange(-5, 6, 0.1)
print(xs)
ys = []

def chartSine():
    i = 0
    for i in xs:
        ys.append(math.sin(i))
        i += 1
    print(xs, ys)
    plot.plot(xs, ys)
    plot.show()

chartSine()
