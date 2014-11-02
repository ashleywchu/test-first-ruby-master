class Temperature

	# factory methods
	def Temperature.from_fahrenheit(temp)
		Temperature.new(:f => temp)
	end

	def Temperature.from_celsius(temp)
		Temperature.new(:c => temp)
	end

	# initialize method
	def initialize(options = {})
		if options.include?(:c)
			@degrees_fahrenheit = Temperature.ctof(options[:c])
		elsif options.include?(:f)
			@degrees_fahrenheit = options[:f]
		end
	end

	# reader methods
	def in_fahrenheit
		@degrees_fahrenheit
	end

	def in_celsius
		Temperature.ftoc(@degrees_fahrenheit)
	end

	# class methods
	def Temperature.ftoc(f)
		(f - 32) * (5.0 / 9.0)
	end

	def Temperature.ctof(c)
		c * (9.0 / 5.0) + 32
	end
end

# Fahrenheit is a subclass of Temperature
class Fahrenheit < Temperature
	def initialize(temp)
		super(:f => temp)
	end
end

# Celsius is a subclass of Temperature
class Celsius < Temperature
	def initialize(temp)
		super(:c => temp)
	end
end



