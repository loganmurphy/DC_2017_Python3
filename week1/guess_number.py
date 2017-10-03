import random

print("I'm thinking of a number between 1 and 10.")
secret_number = random.randint(1, 11)
guesses = 5

while guesses > 0:
    guess = input("What is the secret number? ")
    if(int(guess) == secret_number):
        print("That's right, you're a genius!")
        break
    elif(int(guess) > secret_number):
        print(guess, "is too high.")
        guesses -= 1
        if guesses > 1:
            print("Your have", guesses, "guesses left.")
        elif guesses == 1:
            print("Your have", guesses, "guess left.")
        else:
            print("Sorry, you're all out of guesses.")
            play_again = input("Do you want to play again? ")
            if play_again.lower() == "yes":
                guesses += 5
                secret_number = random.randint(1, 11)
            else:
                print("Goodbye.")
                break
    else:
        print(guess, "is too low.")
        guesses -= 1
        if guesses > 1:
            print("Your have", guesses, "guesses left.")
        elif guesses == 1:
            print("Your have", guesses, "guess left.")
        else:
            print("Sorry, you're all out of guesses.")
            play_again = input("Do you want to play again? ")
            if play_again.lower() == "yes":
                guesses += 5
                secret_number = random.randint(1, 11)
            else:
                print("Goodbye.")
                break
