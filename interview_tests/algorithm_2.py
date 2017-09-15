my_nums = list(range(0, 1000))
the_sum = 0

for i in my_nums:
    if i %3 == 0 or i %5 == 0:
        the_sum += i
print(the_sum)
