# Write a program that prompts the user to enter a file name,
# then prompts the user to enter the contents of the file,
# and then saves the content to the file.

the_file = input("What do you want to call your file? ")
file_handle = open(the_file, "w")
file_handle.write(input("What do you want to write? "))
file_handle.close()
