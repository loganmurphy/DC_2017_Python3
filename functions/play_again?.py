def playAgain():
    answer = input("Do you want to play again (Y or N)? ")
    if answer.lower() == "n":
        print("Awww, how come? ")
        return False
    else:
        print("Cool, let's go. ")
        return True

playAgain()
