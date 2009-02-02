sum = 0

(1..1000).each do |x|
	sum = sum + x**x
end

puts sum