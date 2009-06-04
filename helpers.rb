module Metodos
	def fibonacci(first, second, limit)
		sequence = [first, second]

		while sequence.last < limit do
			sequence.push( sequence.last(2).inject(0) { |sum, number| sum + number } )
		end

		sequence.pop
		return sequence
	end
	
	def sum_digits(number)
		number.to_s.split("").inject(0) { |sum, number| sum + number.to_i }
	end
	
	def fact(n)
		return (n==0) ? 1 : n * fact(n-1)
	end
end