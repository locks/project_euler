sum = 0
sum_of_squares = 0

(0..100).each do |x|
	sum_of_squares = sum_of_squares + (x*x)
	sum = sum + x
end

squared_sum = sum*sum

puts sum_of_squares
puts squared_sum

total = sum_of_squares - squared_sum
puts total.abs