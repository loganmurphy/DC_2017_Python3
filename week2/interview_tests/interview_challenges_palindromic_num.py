i = 0
j = 1
num = ' '
pals = []
for i in range(111,1000):
    for j in range(121,1000):
        num = str((i * j))
        if num[0] == num[-1] and num[1] == num[-2] and num[2] == num[-3]:
            pals.append(int(num))
answer = max(pals)
print(answer)
# The answer is 906609
