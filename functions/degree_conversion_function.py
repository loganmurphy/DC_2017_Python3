import matplotlib.pyplot as plot

def temp_convert():
    temp_in_c = int(input("Temperature in C? "))
    temp_in_f = int(temp_in_c * 1.8 + 32)
    xs = [temp_in_c, temp_in_f + 1]
    ys = [0, 1]
    fig = plot.figure()
    ax = fig.add_subplot(111)
    ax.set_xlabel("Celsius to Fahrenheit", fontsize=10, fontweight="bold")
    ax.text(-0.25, temp_in_c/2, "Degrees Celcius", fontsize=10, fontweight="bold")
    ax.text(0.70, temp_in_f/2, "Degrees Fahrenheit", fontsize=10, fontweight="bold")
    plot.bar(ys, xs)
    plot.show()
temp_convert()
