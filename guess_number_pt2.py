import random

secret_number = int(input("Pick a number between 1 and 100. "))
computer_guess = 50
tries = 0

while True:
    if(computer_guess != secret_number):
        tries += 1
        print(computer_guess)
        answer = input("Is this your number? ")
        if answer.lower() == "too high":
            computer_guess -= 1
        elif answer.lower() == "too low":
            computer_guess += 1
        else:
            break

print("Your number is ", secret_number)
print("It took the computer {} tries.".format(tries))
