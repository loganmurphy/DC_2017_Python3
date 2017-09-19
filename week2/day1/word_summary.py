paragraph1 = input("Type a paragraph ").lower()
paragraph2 = " "
word_histogram = {}
punctuation = [".", "?", "!", ",",]

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
