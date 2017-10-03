height = 4
width = 7
star = "*"
space = " "
i = 0

while i < height:
    print((space * width) + star)
    i += 1
    width -= 1
    star = (2 * "*") + star
