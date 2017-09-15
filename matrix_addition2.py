# My code only works if I code in the matrices in advance. When I attempt to use
# input, it doesn't work correctly.


# a = input("First matrix? ")
# print(type(a))
# The input will not concatenate with the other list of list because they are
# not recognized as numbers, but int() won't work?

a = [[1, 4], [7, 9]]
c = []
while True:
    # b = input("Second matrix? " )
    b = [[2, -8], [0, 5]]
    # b = [[2, -8], [0, 5], [2, 6]]
    if (len(b) != len(a)):
        print("Hey, make your matrices the same length!")
        break
    for i in range(len(a)):
        row = []
        for j in range(len(a[i])):
            row.append(a[i][j] + b[i][j])
        c.append(row)
    print(c)
    break
