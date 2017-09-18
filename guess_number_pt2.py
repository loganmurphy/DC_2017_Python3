import random

secret_number = int(input("Pick a number between 1 and 100. "))
computer_guess = 0
tries = 0

while True:
    if(computer_guess != secret_number):
        computer_guess = (random.randrange(0, 100, 1))
        tries += 1
    else:
        break

print("Your number is ", secret_number)
print("It took the computer {} tries.".format(tries))
