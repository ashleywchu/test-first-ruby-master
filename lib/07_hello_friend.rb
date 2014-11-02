# class Friend
class Friend

	# greeting method with default = nil
	def greeting(who = nil)
		if who == nil
			"Hello!"
		else
			"Hello, #{who}!"
		end
	end

end
