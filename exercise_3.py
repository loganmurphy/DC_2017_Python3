import matplotlib.pyplot as plot

def algebra(x):
    y = x * x + 1
    return y

xs = list(range(-100, 101))
ys = []

def plotIt():
    for x in xs:
        ys.append(algebra(x))
    plot.plot(xs, ys)
    plot.show()

plotIt()
