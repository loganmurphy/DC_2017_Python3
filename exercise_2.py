import matplotlib.pyplot as plot

def algebra(x):
    y = x + 1
    return y

xs = list(range(-3, 4))
ys = []

def plotIt():
    for x in xs:
        ys.append(algebra(x))
    plot.plot(xs, ys)
    plot.show()

plotIt()
