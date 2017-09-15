coins = 0
print("You have {} coins".format(coins))

while input("Do you want a coin? ").lower() == "yes":
    coins += 1
    print("You have {} coins".format(coins))

print("Fine, no more coins for you!")
