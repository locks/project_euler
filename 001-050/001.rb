sum = 0

(1...1000).each do |i|
	sum+=i if (i%3*i%5 == 0)
end

puts sum