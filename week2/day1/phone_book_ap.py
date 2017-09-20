import json

welcome_msg = """
Welcome to My Electronic Phone Book:
===================================
1. Look up an entry
2. Set an entry
3. Delete an entry
4. List all entries
5. Quit
"""

# contact = {
#   'name': 'Paul',
#   'favorite_foods': {
#     'fast': 'burgers',
#     'italian': 'pizza'
#   }
# }
print(welcome_msg)
contacts = {}
# If they choose to look up an entry, you will ask them for the person's name, and then
# look up the person's phone number by the given name and print it to the screen.
while True:
    user_choice = int(input("What do you want to do "))
    if user_choice == 1:
        name = input("Name: ").capitalize()
        print(name)
        with open("phone_book_app.json", "r") as file_handle:
            contacts = json.load(file_handle)
            print(contacts[name],["email"],["URL"])
# If they choose to set an entry, you will prompt them for the person's name and the person's phone number,
    elif user_choice == 2:
        name = input("Name: ").capitalize()
        contacts[name] = {"phone": None, "email": None, "URL": None}
        number = input("Number: ")
        contacts[name]['phone'] = number
        more_info1 = input("Do you want to add an email address? ")
        if more_info1.lower() == "yes":
            email = input("email: ")
            contacts[name]["email"] = email
        more_info2 = input("Do you want to add a website? ")
        if more_info2.lower() == "yes":
            url = input("URL: ")
            contacts[name]["URL"] = url
            with open("phone_book_app.json", "w") as file_handle:
                json.dump(contacts, file_handle)
        else:
            with open("phone_book_app.json", "w") as file_handle:
                json.dump(contacts, file_handle)
            print(contacts)
# If they choose to delete an entry, you will prompt them for the person's name and delete the given person's entry.
    elif user_choice == 3:
        name = input("Which contact? ").capitalize()
        del(contacts[name])
        with open("phone_book_app.json", "w") as file_handle:
            json.dump(contacts, file_handle)
        print(contacts)
# If they choose to list all entries, you will go through all entries in the dictionary and print each out to the terminal.
    elif user_choice == 4:
        with open("phone_book_app.json", "r") as file_handle:
            contacts = json.load(file_handle)
        print(contacts)
# If they choose to quit, end the program.
    else:
        print("Goodbye!")
        break
