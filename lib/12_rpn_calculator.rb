class RPNCalculator

	attr_accessor :stack

	def initialize
		@stack = []
	end

	# adds a number to the end of @stack
	def push(n)
		@stack << n.to_f
	end

	# takes the last element of the array and returns it
	# if there is no element, returns "calculator is empty"
	def pop
		num = @stack.pop
		raise "calculator is empty" if num == nil
		return num
	end

	# adds the last two numbers and pushes the result into @stack
	def plus
		@stack << (pop + pop)
	end

	# subtracts the last number from the second to last number and pushes
	# the result into @stack
	def minus
		# second number in array
		second = pop
		# first number in array
		first = pop
		@stack << (first - second)
	end

	# multiplies the last number by the first number and pushes the
	# result into @stack
	def times
		second = pop
		first = pop
		@stack << (first * second)

	end

	# divides the last number by the second to last number and pushes the
	# result into @stack
	def divide
		second = pop
		first = pop
		@stack << (first / second)
	end

	# returns the last element in @stack
	def value
		return @stack[-1]
	end

	# converts operators into symbols
	def tokens(string)
		string.split(" ").map { |x|
			if x =~ /[*+-\/]/
				x.to_sym
			else
				x.to_i
			end
		}
	end

	# takes a string and returns the evaluation
	def evaluate(string)
		tokens(string).each { |x| 
			case x
			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push x
			end
		}
		return value
	end

end
