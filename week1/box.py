width = input("How wide? ")
width = int(width)
height = input("How tall? ")
height = int(height)
print("*" * width)

for i in range(1, height + 1):
    space = " "
    print("*" + space * (width - 2) + "*")
print("*" * width)
