# Write a program that writes to an in memory file and keeps track of how many
# characters/bytes were added and prints that information to the screen.
# Continue adding characters until your program dies.
#
# At what count did your computer crash?
# What kind of error did you get?
# Did your program crash earlier or later than expected? Why do you think?

# I can't get it to crash!!!

file_handle = open("hello.txt", "w")
message = "Hello world"
crazy = message * 100000000000000000000000000000000
# print(crazy)
byte_count = file_handle.write(crazy)
i = 0
while True:
    file_handle = open('hello.txt', 'a')
    file_handle.write(crazy)
    file_handle = open('hello.txt', 'r')
    contents = file_handle.read()
    print("Count:", i, "Bytes:", byte_count)
    i += 1
    byte_count += 12
# file_handle.close()
# print(contents)
print("Count:", i, "Bytes:", byte_count)
