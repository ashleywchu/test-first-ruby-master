# add a to b
def add(a, b)
	return a + b
end

# subtracts b from a
def subtract(a, b)
	return a - b
end

# sums up all numbers in an array
def sum(array)
	total = 0
	array.each { |x|
		total += x
	}
	return total
end

# multiplies all numbers in an array
def multiply(array)
	total = 1
	array.each { |x|
		total *= x
	}
	return total
end

# base to the power of exponent
def power(base, exp)
	total = 1
	i = 1
	while i <= exp
		total *= base
		i += 1
	end
	return total
end

# product of every number less than and including num
def factorial(num)
	total = 1
	i = 1
	while i <= num
		total *= i
		i += 1
	end
	return total
end




