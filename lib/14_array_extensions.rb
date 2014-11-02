class Array

	# sum up all numbers in array
	def sum
		result = 0
		self.each { |x|
			result += x
		}
		return result
	end

	# square each number in the array and pushes result into the new array
	# and returns the new array
	def square
		squares = []
		self.each { |x|
			squares << x**2
		}
		return squares
	end

	# square each number in the array and return the original array
	def square!
		self.map! { |x|
			x**2
		}
		return @array
	end








end