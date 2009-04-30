class Numero
	attr_accessor :numero, :clean

	def initialize(numero)
		@numero = numero
		@clean = false
	end

	def next
		@numero += 1
	end

	def clean?(i_min, i_max)
		(i_min..i_max).each do |i|
			(@numero % i == 0) ?
				@flag = true : @flag = false
		end
	end
end

lol = Numero.new(1)

while (!lol.clean)
	
	lol.clean?(1, 10)
	puts lol.numero

	lol.next
end