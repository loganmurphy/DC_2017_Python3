my_list = list(range(1, 101))
my_list_2 = []
print(my_list_2)

for i in my_list:
    if i %3 == 0 and i %5 == 0:
        my_list_2.append('FizzBuzz')
        i += 1
    elif i %3 == 0:
        my_list_2.append('Fizz')
        i += 1
    elif i %5 == 0:
         my_list_2.append('Buzz')
         i += 1
    else:
        my_list_2.append(i)
        i += 1
print(my_list_2)
