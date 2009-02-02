def fact(n)
	return 1 if n == 0
	n * fact(n-1)
end

def sum(n)
	sum = 0
	
	n.each do |i|
		sum += i
	end
end

lol = fact(100).to_s.split("").map{ |i| i.to_i}