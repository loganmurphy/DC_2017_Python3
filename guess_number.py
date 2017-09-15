secret_number = 5

while True:
    guess = input("What is the secret number? ")
    if(int(guess) == secret_number):
        break
    else:
        print("Guess again!")

print("That's right, you're a genius!")
