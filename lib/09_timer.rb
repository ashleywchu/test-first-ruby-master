class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	# calculates the number of hours, minutes, and seconds
	def time_string
		hours = @seconds / 3600
		min_in_sec = @seconds % 3600
		minutes = min_in_sec / 60
		seconds = min_in_sec % 60

		padded(hours) + ":" + padded(minutes) + ":" + padded(seconds)
	end

	# helper method: adds a "0" before any number less than 10
	def padded(num)
		if num < 10
			"0" + num.to_s
		else
			num.to_s
		end
	end

end