from turtle import *

def iso_trape(pen, f_color, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    left(60)
    forward(159)
    right(60)
    forward(115)
    right(60)
    forward(159)
    right(120)
    forward(255)
    if dofill:
        end_fill()
def inverse_iso_trape(pen, f_color, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    right(60)
    forward(155)
    left(60)
    forward(115)
    left(60)
    forward(155)
    left(120)
    forward(275)
    if dofill:
        end_fill()

def rhomboid_2(pen, f_color, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    forward(153)
    right(60)
    forward(160)
    right(120)
    forward(155)
    right(60)
    forward(155)
    if dofill:
        end_fill()

def rhomboid_3(pen, f_color, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    forward(155)
    right(60)
    forward(155)
    right(120)
    forward(155)
    right(60)
    forward(155)
    if dofill:
        end_fill()


def rhomboid(pen, f_color, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    forward(155)
    right(120)
    forward(155)
    right(60)
    forward(155)
    right(120)
    forward(155)
    if dofill:
        end_fill()

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

def inverse_triangle(pen, f_color, size, dofill):
    pencolor(pen)
    fillcolor(f_color)
    if dofill:
        begin_fill()
    for i in range(3):
        forward(size)
        left(240)
        i += 1
    if dofill:
        end_fill()
