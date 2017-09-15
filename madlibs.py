name = input("What's your name? ")
favFood = input("What's your favorite food? ")
luckyNum = input("What's your lucky number? ")
specialTalent = input("What's something unusual you can do? ")

print("{}'s favorite food is {}, their lucky number is {} and they can {}"
    .format(name.upper(), favFood.lower(), luckyNum, specialTalent))
