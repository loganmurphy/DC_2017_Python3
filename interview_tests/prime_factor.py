known_primes = [2,3]
def is_prime(n):
	total_primes = len(known_primes)
	for i in range(0,total_primes):
		if(n % known_primes[i] == 0):
			# NOT PRIME!!
			return False
		else:
			# it might be prime, it might not.
			# Its just not divisible by this number
			continue
	known_primes.append(n)
	return True

max_num = 600851475143
for i in range(2, max_num + 1):
	if is_prime(i):
		# print(i)
		pass
# print(known_primes)

prime_factors = []
total_primes = len(known_primes)

for i in range(0, total_primes):
	if max_num % known_primes[i] == 0:
		prime_factors.append(known_primes[i])
print(prime_factors)
