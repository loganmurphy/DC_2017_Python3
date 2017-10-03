triangle_nums = []
i = 1

while i <= 100:
    j = (i * (i+1)) / 2
    triangle_nums.append(int(j))
    i += 1
print(triangle_nums)
