a = [[1, -2],[3, 6]]
b = [[3, 0], [8, -3]]
c = []

for i in range(len(a)):
    row = []
    for j in range(len(a[i])):
        row.append(a[i][j] * b[i][j])
    c.append(row)

print(c)
