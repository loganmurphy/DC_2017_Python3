# Write a program that prompts the user to enter a file name,
# reads the contents of the file and prints it to the screen.
the_file = input("What file do you want to you want to read? ")
file_handle = open(the_file, "r")
contents = file_handle.read()
print(contents)
file_handle.close()
