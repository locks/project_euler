def fibonacci(first, second, limit)
	sequence = [first, second]

	while sequence.last < limit
			sequence.push( sequence.last(2).inject(0) { |sum, number| sum + number } )
	end

	sequence.pop
	sequence
end

result = fibonacci(1,2,4_000_000).find_all{ |number| number%2==0 }.inject(0) { |sum, number| sum += number }

puts result