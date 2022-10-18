require 'prime'

def p01(arr)
	arr.last
end

def p02(arr)
	arr[-2]
end
	
def p03(arr, n)
	arr[n-1]
end

def p04(arr)
	arr.length
end

def p05(arr)
	arr.reverse
end

def p06(word)
	word == word.reverse
end

def p07(arr)
	arr.flatten
end

def p08(arr)
	result = []
	for i in 0..(arr.length - 1)
		if (arr[i] != result.last)
			result << arr[i]
		end
	end
	result
end

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

def p10(arr)
	grouped = p09(arr)
	result = []
	for i in 0..(grouped.length - 1)
		result << [grouped[i].length, grouped[i].last]
	end
	result
end

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

def p14(arr)
	result = []
	for i in 0..(arr.length - 1)
		2.times {result << arr[i]}
	end
	result
end

def p15(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		n.times do
			result << arr[i]
		end
	end
	result
end

def p16(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		if (i+1) % n != 0
			result << arr[i]
		end
	end
	result
end

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

def p18(arr, n, m)
	result = []
	for i in (n-1)..(m-1)
		result << arr[i]
	end
	result
end

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

def p20(arr, n)
	result = []
	for i in 0..(arr.length - 1)
		if i != (n-1)
			result << arr[i]
		end
	end
	result
end

def p21(arr, n, m)
	arr.insert(n - 1, m)
end

def p22(n, k)
	result = []
	for a in n..k do
		result << a
	end
	result
end

def p23(arr, n)
	result = []
	for i in 0..(n-1)
		result << arr.shuffle()[i]
	end
	result
end

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

def p25(arr)
	arr.shuffle()
end

def p26(arr, n)
	arr.combination(n).to_a
end

def p28(arr)
	arr.sort_by {|x| x.length}
end

def p31(x)
	x.prime?
end

def p32(a, b)
	if a % b == 0
		b
	else
		p32(b, a % b)
	end
end

def p33(a, b)
	p32(a, b) == 1
end

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