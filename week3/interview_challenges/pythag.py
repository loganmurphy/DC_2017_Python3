# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
#
# There exists exactly one Pythagorean triplet for
# which a + b + c = 1000.
# Find the product abc.

triplet = []
for a in range(100,800):
    for b in range(300, 1000):
        c = (1000 - a - b)
        if (a + b + c) == 1000:
            pass
        else:
            a += 1
            b += 1
            c += 1
        if ((a * a) + (b * b) == (c * c)):
            product = (a * b * c)
            triplet = [a, b, c]
            print(triplet)
            print(product)

 #The answer is: (200 * 375 * 425) = 31875000
