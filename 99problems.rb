require 'prime'

# P01 Find the last element of a list.
def p01(arr)
	arr.last
end

# P02 Find the last but one element of a list.
def p02(arr)
	arr[-2]
end

# P03 Find the K'th element of a list.
def p03(arr, n)
	arr[n-1]
end

# P04 Find the number of elements of a list.
def p04(arr)
	arr.length
end

# P05 Reverse a list.
def p05(arr)
	arr.reverse
end

# P06 Find out whether a list is a palindrome.
def p06(word)
	word == word.reverse
end

# P07 Flatten a nested list structure.
def p07(arr)
	arr.flatten
end

# P08 Eliminate consecutive duplicates of list elements.
def p08(arr)
	result = []
	for i in 0..(arr.length - 1)
		if (arr[i] != result.last)
			result << arr[i]
		end
	end
	result
end

# P09 Pack consecutive duplicates of list elements into sublists.
def p09(arr)
	result = []
	for i in 0..(arr.length - 1)
		if not result.last.respond_to? :each
			result << [arr[i]]
		elsif result.last.last == arr[i]
			result.last << arr[i]
		else
			result << [arr[i]]
		end
	end
	result
end

# P10 Run-length encoding of a list.
def p10(arr)
	grouped = p09(arr)
	result = []
	for i in 0..(grouped.length - 1)
		result << [grouped[i].length, grouped[i].last]
	end
	result
end

# P11 Modified run-length encoding.
def p11(arr)
	counted = p10(arr)
	result = []
	for i in 0..(counted.length - 1)
		if counted[i].first == 1
			result << counted[i].last
		else
			result << counted[i]
		end
	end
	result
end

# P12 Decode a run-length encoded list.
def p12(arr)
	result = []
	for i in 0..(arr.length - 1)
		if arr[i].respond_to? :each
			x = arr[i].first
			x.times do
				result << arr[i].last
			end
		else
			result << arr[i]
		end
	end
	result
end

# P13 Run-length encoding of a list (direct solution).
def p13(arr)
	grouped = []
	for i in 0..(arr.length - 1)
		if not grouped.last.respond_to? :each
			grouped << [arr[i]]
		elsif grouped.last.last == arr[i]
			grouped.last << arr[i]
		else
			grouped << [arr[i]]
		end
	end
	result = []
	for i in 0..(grouped.length - 1)
		if grouped[i].length != 1
			result << [grouped[i].length, grouped[i].last]
		else
			result << grouped[i].last
		end
	end
	result
end

# P14 Duplicate the elements of a list.
def p14(arr)
	result = []
	for i in 0..(arr.length - 1)
		2.times {result << arr[i]}
	end
	result
end

# P15 Duplicate the elements of a list a given number of times.
def p15(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		n.times do
			result << arr[i]
		end
	end
	result
end

# P16 Drop every N'th element from a list.
def p16(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		if (i+1) % n != 0
			result << arr[i]
		end
	end
	result
end

# P17 Split a list into two parts; the length of the first part is given.
def p17(arr, n)
	first_part = []
	for i in 0..(n - 1)
		first_part << arr[i]
	end
	second_part = []
	for i in n..(arr.length - 1)
		second_part << arr[i]
	end
	result = []
		result << first_part
		result << second_part
	result
end

# P18 Extract a slice from a list.
def p18(arr, n, m)
	result = []
	for i in (n-1)..(m-1)
		result << arr[i]
	end
	result
end

# P19 Rotate a list N places to the left.
def p19(arr, n)
	result = []
	if n > 0
		for i in n..(arr.length - 1)
			result << arr[i]
		end
		for i in 0..(n-1)
			result << arr[i]
		end
	else
		for i in n..(-1)
			result << arr[i]
		end
		for i in 0..(arr.length + n -1)
			result << arr[i]
		end
	end
	result
end

# P20 Remove the K'th element from a list.
def p20(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		if i != (n-1)
			result << arr[i]
		end
	end
	result
end

# P21 Insert an element at a given position into a list.
def p21(arr, n, m)
	arr.insert(n - 1, m)
end

# P22 Create a list containing all integers within a given range.
def p22(n, k)
	result = []
	for a in n..k do
		result << a
	end
	result
end

# P23 Extract a given number of randomly selected elements from a list.
def p23(arr, n)
	result = []
	for i in 0..(n-1)
		result << arr.shuffle()[i]
	end
	result
end

# P24 Lotto: Draw N different random numbers from the set 1..M.
def p24(n, m)
	arr = []
	for a in 1..m do
		arr << a
	end
	shuffled = []
	for i in 0..(arr.length - 1)
		shuffled << arr.shuffle()[i]
	end
	result = []
	for i in 0..(n-1)
		result << shuffled[i]
	end
	result
end

# P25 Generate a random permutation of the elements of a list.
def p25(arr)
	arr.shuffle()
end

# P26 Generate the combinations of K distinct objects chosen from the N elements of a list
def p26(arr, n)
	arr.combination(n).to_a
end

# P28 Sorting a list of lists according to length of sublists
def p28(arr)
	arr.sort_by {|x| x.length}
end

# P31 Determine whether a given integer number is prime.
def p31(x)
	x.prime?
end

# P32 Determine the greatest common divisor of two positive integer numbers.
def p32(a, b)
	if a % b == 0
		b
	else
		p32(b, a % b)
	end
end

# P33 Determine whether two positive integer numbers are coprime.
def p33(a, b)
	p32(a, b) == 1
end

# P34 Calculate Euler's totient function phi(m).
def p34(x)
	range = []
		for i in 1..(x - 1)
			range << i
		end
		result = []
		if x.prime? == false
			for n in 0..(range.length - 1)
				if p32(x, range[n]) == 1
					result << range[n]
				end
			end
			result.count
		else
			result << 1
		end
end

# P35 Determine the prime factors of a given positive integer.
def p35(x)
	if x == 1
		return []
	else
		factors = []
		for i in 2..x
			if x % i == 0
				factors << i 
			end
		end
		result = []
		y = (x / factors[0])
		result << factors[0]
		result + p35(y)
		end
end

# P36 Determine the prime factors of a given positive integer (2).
def p36(x)
arr = []
prime_factors = p35(x)
	for i in 0..(prime_factors.length - 1)
		if not arr.last.respond_to? :each
			arr << [prime_factors[i]]
		elsif arr.last.last == prime_factors[i]
			arr.last << prime_factors[i]
		else 
			arr << [prime_factors[i]]
		end
	end
	result = []
	for i in 0..(arr.length - 1)
		if arr[i].length != 1
			result << [arr[i].last, arr[i].length]
		else
			result << [arr[i].last, 1]
		end
	end
	result
end

# P37 (**) Calculate Euler's totient function phi(m) (improved).
def p37(x)
prime_factors = p36(x)

arr = []
i = 0
	while i < prime_factors.length do
		a = ((prime_factors[i].first - 1)*((prime_factors[i].first))**(prime_factors[i].last - 1))
		arr << a
		
		i += 1
	end
	arr.inject(:*)
end

# P39 A list of prime numbers.
def p39(x, y)
	arr = []
	for i in x..y
		arr << i
	end
	
	result = []
	for i in 1.. (arr.length - 2)
		if arr[i].prime? == true
			result << arr[i]
		end
	end
	result
end

# P40 Goldbach's conjecture.
def p40(x)
	if x == 2
		return [1, 1]
	end
	if x == 3
		return [1, 2]
	end
	if x == 4
		return [2, 2]
	end
	if x == 6
		return [3, 3]
	end
	arr = []
	for i in 2..x
		arr << i
	end
	prime_elements = []
	for i in 0..(arr.length - 1)
		if arr[i].prime? == true
			prime_elements << arr[i]
		end
	end
	prime_elements.combination(2).detect { |a, b| a + b == x }
end

# P41 A list of Goldbach compositions.
def p41(x, y)
	arr = []
	for i in x..y
		if i % 2 == 0
			arr << i
		end
	end
	prime_elements = []
	for i in 0..(arr.length - 1)
		a = p40(arr[i])
		prime_elements << a
	end
	result = []
	for i in 0..(prime_elements.length - 1)
		result << [arr[i], prime_elements[i]]
	end
	result
end

# P41 A list of Goldbach compositions (primes bigger than 50).
def p41a(x, y)
	arr = []
	for i in x..y
		if i % 2 == 0
			arr << i
		end
	end
	prime_elements = []
	for i in 0..(arr.length - 1)
		a = p40(arr[i])
		prime_elements << a 
	end
	result = []
	for i in 0..(prime_elements.length - 1)
		if prime_elements[i].first > 50 && prime_elements[i].last > 50
				result << [arr[i], prime_elements[i]]
		end
	end
	result
end
	