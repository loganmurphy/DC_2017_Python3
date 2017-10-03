tall = input("How high? ")
height = int(tall)
wide = input("How wide? ")
width = int(wide)
star = "*"
space = " "
i = 0

while i < height:
    print((space * width) + star)
    i += 1
    width -= 1
    star = (2 * "*") + star
