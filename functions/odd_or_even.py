import matplotlib.pyplot as plot

xs = list(range(-5, 6))
ys = []

def barGraph():
    i = 0
    for i in xs:
        if (i % 2 == 0):
            ys.append(-1)
        else:
            ys.append(+1)
        i += 1
    plot.bar(xs, ys)
    plot.show()

barGraph()
