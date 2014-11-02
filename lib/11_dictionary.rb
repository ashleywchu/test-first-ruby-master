class Dictionary

	def initialize
		@entries = {}
	end

	def entries
		@entries
	end

	# if a hash with both a key and a value is given, adds both to @entries
	# if just given a key, adds key to @entries with value of nil
	def add(new_entry)
		if new_entry.class == Hash
			@entries.merge!(new_entry)
		else
			@entries[new_entry] = nil
		end
	end

	# if key is in @entries, return true
	# if key is not in @entries, return false
	def include?(key)
		@entries.keys.include?(key)
	end

	# returns the keys in alphabetical order
	def keywords
		@entries.keys.sort
	end

	# returns key value pairs when the prefix matches key
	def find(prefix)
		matching_key = {}
		@entries.each { |key, value|
			if key =~ /^#{prefix}/
				matching_key[key] = value
			end
		}
		return matching_key
	end

	# returns key value pairs as: [key] "definition"
	def printable
		formatted = []

		@entries.each { |key, value|
			formatted << %Q{[#{key}] "#{value}"}
		}
		return formatted.sort.join("\n")
	end
	

end
