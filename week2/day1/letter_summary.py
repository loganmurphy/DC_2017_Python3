# Write a letter_histogram function that takes a word as its input, and returns a dictionary containing the tally of how many times each letter in the alphabet was used in the word. For example:
#
# >>> letter_histogram('banana')
# {'a': 3, 'b': 1, 'n': 2}

word = input("Type a word ").lower()
letter_histogram = {}

for letter in word:
    print(letter)
    if letter in letter_histogram:
        letter_histogram[letter] += 1
    else:
        letter_histogram[letter] = 1
print(letter_histogram)
