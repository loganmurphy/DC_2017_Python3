# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
# we can see that the 6th prime is 13.What is the 10,001st prime number?

known_primes = [2,3]
def is_prime(n):
	total_primes = len(known_primes)
	for i in range(0,total_primes):
		if(n % known_primes[i] == 0):
			return False
		else:
			continue
	known_primes.append(n)
	return True

max_num = 110000
for i in range(2, max_num + 1):
	if is_prime(i):
		pass
# print(known_primes)
# print(len(known_primes))
the_biggest = known_primes[10000]
print(the_biggest)
# The 10,001st prime number is '104743'.
