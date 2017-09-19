# Write a program that prompts the user to enter a file name,
# then prints the letter histogram and the word histogram of
# the contents of the file.
file_handle = open(input("Pick a file, and I'll give you the letter and word histograms. "), "r")
# print(file_handle.read())
words = file_handle.read().lower()
print(words)
punctuation = [".", "?", "!", ",", " "]
letter_histogram = {}

for letter in words:
    if letter in punctuation:
        letter = ""
    elif letter in letter_histogram:
        letter_histogram[letter] += 1
    else:
        letter_histogram[letter] = 1

print(letter_histogram)

paragraph1 = words
paragraph2 = " "
punctuation = [".", "?", "!", ","]
word_histogram = {}

for letter in paragraph1:
    if letter in punctuation:
        letter = ""
    else:
        paragraph2 = paragraph2 + letter
words = paragraph2.split()
for word in words:
    if word in word_histogram:
        word_histogram[word] += 1
    else:
        word_histogram[word] = 1

print(word_histogram)
