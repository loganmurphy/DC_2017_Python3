import math
import matplotlib.pyplot as plot
xs = list(range(-5, 6))
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
