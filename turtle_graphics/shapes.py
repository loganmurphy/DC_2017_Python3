from turtle import *

def triangle():
    forward(100)
    right(240)
    forward(100)
    right(240)
    forward(100)
    right(240)

def square():
    forward(100)
    right(90)
    forward(100)
    right(90)
    forward(100)
    right(90)
    forward(100)
    right(90)

def pentagon():
    forward(100)
    right(-72)
    forward(100)
    right(-72)
    forward(100)
    right(-72)
    forward(100)
    right(-72)
    forward(100)
    right(-72)

def hexagon():
    forward(100)
    right(-60)
    forward(100)
    right(-60)
    forward(100)
    right(-60)
    forward(100)
    right(-60)
    forward(100)
    right(-60)
    forward(100)
    right(-60)

def octagon():
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)
    forward(100)
    right(-45)

def star():
    for i in range(5):
        forward(100)
        right(144)

def draw_circle():
    circle(100)
