# 3. Find the single different character between two strings

string_1 = 'abcdef'
string_2 = 'abcdefgaaa'
the_diff = ' '

for letter in string_2:
    if letter not in string_1:
        the_diff = letter
        print(the_diff)
