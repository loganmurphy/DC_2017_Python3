import matplotlib.pyplot as plot
temp_in_c = int(input("Temperature in C? "))

def temp_convert():
    temp_in_f = temp_in_c * 1.8 + 32
the_temp = str(temperature_in_f) + " °F"
print(the_temp)

plot.plot(temp_in_c, 0)
plot.show()
