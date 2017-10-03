list1 = [2, "apple", 2, 67.98, "spaceship", True, True]
list2 = []
i = 0

for i in list1:
    if i not in list2:
        list2.append(i)

print(list2)
