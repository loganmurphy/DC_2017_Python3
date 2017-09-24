

# This solution is kinda crazy, but it works.
nums = []
for n in range(100000000, 300000000, 20):
    if n % 1 == 0 and n % 2 == 0 and n % 3 == 0 and n % 4 == 0 and n % 5 == 0:
        if n % 6 == 0 and n % 7 == 0 and n % 8 == 0 and n % 9 == 0 and n % 10 == 0:
            if n % 11 == 0 and n % 12 == 0 and n % 13 == 0 and n %14 == 0 and n % 15 == 0:
                if n % 16 == 0 and n % 17 == 0 and n % 18 == 0 and n % 19 == 0 and n % 20 == 0:
                    nums.append(n)
                    print(nums)
                    # The answer is 232792560
