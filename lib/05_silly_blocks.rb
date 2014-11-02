# reverses the string
def reverser
	# yields to spec.rb
	string = yield

	words = string.split(" ")
	words.each { |word|
		word.reverse!
	}
	words.join(" ")
end

# adds n to value in default block (default 1)
def adder(n = 1)
	num = yield

	num += n
	num
end

# repeats default block n times
def repeater(n = 1)
	n.times { yield }
end

