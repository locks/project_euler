def intervalo(i_min, i_max, number)
	(i_min..i_max).each do |i|
		if (number % i == 0)
			true
		end
	end
end


(1..20).each do |i|
	print "index " + i.to_s + ": "
	puts 2520 % i
end

######
class Numero < Fixnum
	attr_accessor :numero
	
	def initialize
		@numero = 2520
	end
end

numero = Numero.new
num.maior_divisor(1, 10)