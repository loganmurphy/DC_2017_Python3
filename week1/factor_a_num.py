the_num = int(input("Pick a number. "))
numbers = []

for i in range(1, the_num):
    if ((the_num % i) == 0):
        numbers.append(i)

print(numbers)
