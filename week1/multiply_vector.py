numbers = [1, 2, 3, 4]
numbers2 = [5, 6, 7 ,8]
multiplied_nums = []

# This works
for i, number in enumerate(numbers):
        multiplied_nums.append(numbers[i] * numbers2[i])


print(multiplied_nums)


# This is Paul's solutions:

# for i in range(0, len(m1)):
#     answer.append(m1[i] * m2[i])
#
# print(answer)

# for i, num1 in enumerate(numbers):
#         multiplied_nums.append(num1 * numbers2[i])
