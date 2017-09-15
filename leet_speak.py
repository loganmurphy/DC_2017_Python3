regular = ["A", "E", "G", "I", "O", "S", "T"]
leet = ["4", "3", "6", "1", "0", "5", "7"]
quote = "May the Force be with you."

for i, letter in enumerate(regular):
    quote = quote.replace(letter, leet[i])
    quote = quote.replace(letter.lower(), leet[i])

print(quote)
