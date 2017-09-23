# Challenge 1
#
# The Collatz Conjecture goes like this:
#
# Take any number n. If n is even, divide it by 2, if n is odd, multiply it by 3 and add 1.
# Repeat the process indefinitely, and you'll eventually reach 1.
#
# Given a num variable, can you print all the numbers in num's Collatz sequence
# until 1 is reached? Print the numbers space-separated (and each test case on its own line).

nums = [3]
for n in nums:
    if n % 2 == 1:
        print(n)
        n = n / 2
        nums.append(n)
    elif n != 1:
        print(n)
        n = (n * 3) + 1
        nums.append(n)
        print(n)
    else:
        print(n)
print(nums)
#Answer is: [3, 10, 5, 16, 8, 4, 2, 1]
