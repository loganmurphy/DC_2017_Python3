from turtle import *
from random import randrange
from shapes_2 import star

# The edges are off the screen, is it my resolution?
# window_width()
# window_height()
bgcolor("black")

# I need a way to randomize the number and size of the stars
    # num_of_stars = randrange(20, 100, 1)

def rand_xy():
    random_x = randrange(-650, 650, 1)
    random_y = randrange(-300, 300, 1)
    setpos(random_x, random_y)


# I need a function that sets a random screen position, prints a random number
# of stars, and makes the stars random sizes

def stary_night():
    num_of_stars = randrange(20, 100, 1)
    i = 0
    while(i < num_of_stars):
        size = randrange(2, 10, 2)
        up()
        home()
        rand_xy()
        down()
        pencolor("yellow")
        star("white", "yellow", size, True)
        i += 1
    print(num_of_stars)
stary_night()

mainloop()
