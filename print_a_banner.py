user_input = input("What would you like to say? ")
length = len(user_input)
star = "*"
line = star * (length + 2)
message = star + user_input + star

i = 0
while i < 1:
    print(line)
    print(message)
    print(line)
    i += 1
