# Given a histogram tally (one returned from either letter_histogram or word_summary),
# print the top 3 words or letters.
word = input("Type a word ").lower()
letter_histogram = {}
for letter in word:
    # print(letter)
    if letter in letter_histogram:
        letter_histogram[letter] += 1
    else:
        letter_histogram[letter] = 1
print(letter_histogram)

# This prints a sorted list, and reverses it so it displays in descending order
# of frequency.

print(sorted(letter_histogram.items(), key=lambda item: item[1], reverse=True))
