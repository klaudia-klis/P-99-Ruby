require_relative '99problems.rb'

describe "p01" do
	it "returns the last element of an array" do
		expect(p01([1, 2, 3])).to eq(3)
	end
end

describe "p02" do	
	it "returns the penultimate element of an array" do
		expect(p02([1, 2, 3])).to eq(2)
	end
end
	
describe "p03" do
	it "returns the K'th element of an array" do
		expect(p03([1, 2, 3], 2)).to eq(2)
	end
end

describe "p04" do
	it "returns the length of an array" do
		expect(p04([1, 2, 3])).to eq(3)
	end
end

describe "p05" do
	it "reverses an array" do
		expect(p05([1, 2, 3])).to eq([3, 2, 1])
	end
end

describe "p06" do
	it "is true when a string is a palindrome" do
		expect(p06("anna")).to eq(true)
	end
	
	it "is false when a string is not a palindrome" do
		expect(p06("not a palindrome")).to eq(false)
	end
end

describe "p07" do
	it "flattens a nested array" do
		expect(p07([[1, 2], [3], [4]])).to eq([1, 2, 3, 4])
	end
end

describe "p08" do
	it "eliminates consecutive duplicates of an array" do
		expect(p08([1, 1, 2, 2])).to eq([1, 2])
	end
end

describe "p09" do
	it "packs consecutive duplicates of an array into subarray" do
		expect(p09([1, 1, 2, 2])).to eq([[1, 1], [2, 2]])
	end
end

describe "p10" do
	it "encodes the run-length of an array" do
		expect(p10([1, 1, 2, 2])).to eq([[2,1], [2,2]])
	end
end

describe "p11" do
	it "encodes the run-length of an array (modified)" do
		expect(p11([1, 1, 2, 3, 3])).to eq([[2, 1], 2, [2, 3]])
	end
end

describe "p12" do
	it "decodes the run-length of an array" do
		expect(p12([[2, 1], 2, [2, 3]])).to eq([1, 1, 2, 3, 3])
	end
end

describe "p13" do
	it "encodes the run-length of an array" do
		expect(p13([1, 1, 2, 3, 3])).to eq([[2, 1], 2, [2, 3]])
	end
end

describe "p14" do
	it "duplicates the elements of an array" do
		expect(p14([1, 2])).to eq([1, 1, 2, 2])
	end
end

describe "p15" do
	it "duplicates the elements of an array a given number of times" do
		expect(p15([1, 2], 3)).to eq([1, 1, 1, 2, 2, 2])
	end
end

describe "p16" do
	it "drops every N'th element from an array" do
		expect(p16([1, 1, 2, 2, 3, 3], 2)).to eq([1, 2, 3])
	end
end

describe "p17" do
	it "splits an array into two parts (the length of the first part is given)" do
		expect(p17([1, 2, 3, 4, 5], 2)).to eq([[1, 2], [3, 4, 5]])
	end
end

describe "p18" do
	it "extracts a slice from an array" do
		expect(p18([1, 2, 3], 2, 3)).to eq ([2, 3])
	end
end

describe "p19" do
	describe "with positive input" do
		it "rotates a list N places to the left" do
			expect(p19([*1..5], 3)).to eq([4, 5, 1, 2, 3])
		end
	end
	describe "with negative input" do
		it "rotates a list N places to the left" do
			expect(p19([*1..5], -3)).to eq([3, 4, 5, 1, 2])
		end
	end
end

describe "p20" do
	it "removes the K'th element from an array" do
		expect(p20([1, 2, 3, 4], 2)).to eq([1, 3, 4])
	end
end

describe "p21" do
	it "inserts an element at a given position into an array" do
		expect(p21([1, 2, 3, 4], 2, "x")).to eq([1, "x", 2, 3, 4])
	end
end

describe "p22" do
	it "creates an array containing all integers within a given range" do
		expect(p22(2, 4)).to eq([2, 3, 4])
	end
end

describe "p23" do
	it "extracts a given number of randomly selected elements from an array" do
		input = [1, 2, 3]
		output = p23(input, 2)
		expect(output.length).to eq(2)
		expect(output - input).to be_empty
	end
end

describe "p24" do
	it "returns N different random numbers from the set 1..M" do
		expect(p24(6, 10).length).to eq(6)
	end
end

describe "p25" do
	it "generated a random permutation of the elements of an array" do
		expect(p25([1, 2, 3, 4, 5])).to_not eq([1, 2, 3, 4, 5])
	end
end

describe "p26" do
	it "generates the combinations of K distinct objects chosen from the N elemenets of an array" do
		expect(p26([1, 2, 3], 2)).to eq([[1, 2], [1, 3], [2, 3]])
	end
end

describe "p28" do
	it "sorts an array of arrays accordint to length of subarrays" do
		expect(p28([[1, 2, 3], [1], [1, 2]])).to eq([[1], [1, 2], [1, 2, 3]])
	end
end

describe "p31" do
	describe "if number is prime" do
		it "returns true" do
			expect(p31(7)).to eq(true)
		end
	end
	describe "if number is not prime" do
		it "returns false" do
			expect(p31(8)).to eq(false)
		end
	end
end

describe "p32" do
	it "determines the greatese common divisor of two positibe integer numbers" do
		expect(p32(100, 15)).to eq(5)
	end
end

describe "p33" do
	describe "if two positive integer numbers are comprime" do
		it "returns true" do
			expect(p33(35, 64)).to eq(true)
		end
	end
	describe "if two positibe integer numbers are not comprime" do
		it "returns false" do
			expect(p33(44, 11)).to eq(false)
		end
	end
end

describe "p34" do
	it "counts the positive integers up to a given integer N that are relatively prime to N" do
		expect(p34(10)).to eq(4)
	end
end

describe "p35" do
	it "returns the prime factors of a given positive integer" do
		expect(p35(315)).to eq([3, 3, 5, 7])
	end
end	

describe "p36" do
	it "returns the prime factors of a fiven positive integer (counted)" do
		expect(p36(315)).to eq([[3, 2], [5, 1], [7, 1]])
	end
end

describe "p37" do
	it "counts the positive integeres up to a given integer N that are relatively prime to N(improved)" do
		expect(p37(315)).to eq(144)
	end
end

describe "p39" do
	it "returns an array of prime numbers" do
		expect(p39(4, 6)).to eq([5])
	end
end

describe "p40" do
	it "returns two prime numbers that sum up to a given even integer" do
		expect(p40(28)).to eq([5, 23])
	end
end


