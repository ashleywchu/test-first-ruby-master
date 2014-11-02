# measures how long it takes to complete each block (default = 1)
def measure(n = 1)
	start_time = Time.now
	n.times { yield }
	return (Time.now - start_time) / n
end