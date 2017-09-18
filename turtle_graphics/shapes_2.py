from turtle import *

def triangle(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(3):
        forward(size)
        right(240)
        i += 1
    if dofill:
        end_fill()

def square(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(4):
        forward(size)
        right(90)
        i += 1
    if dofill:
        end_fill()

def pentagon(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(5):
        forward(size)
        right(-72)
        i += 1
    if dofill:
        end_fill()

def hexagon(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(6):
        forward(size)
        right(-60)
        i += 1
    if dofill:
        end_fill()

def octagon(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(8):
        forward(size)
        right(-45)
        i += 1
    if dofill:
        end_fill()

def star(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(5):
        right(-72)
        forward(size)
        left(-144)
        forward(size)
        i += 1
    if dofill:
        end_fill()

def draw_circle(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    circle(100)
    if dofill:
        end_fill()
