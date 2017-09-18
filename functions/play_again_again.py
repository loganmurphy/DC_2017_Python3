def playAgain():
    while True:
        answer = input("Do you want to play again (Y or N)? ")
        if answer.lower() not in ("y", "n"):
            print("Invalid input ")
        elif answer.lower() == "n":
            print("Awww, how come? ")
            return False
        else:
            print("Cool, let's go. ")
            return True

playAgain()
