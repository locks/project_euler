require File.join(File.dirname(__FILE__), "helpers.rb")

class P002
	include Metodos
	attr_reader :resultset, :sequence
	
	def initialize(first, second, limit)
		@sequence  = fibonacci(first, second, limit)
		@resultset = 0
	end

	def calcular
		@sequence.each { |number| @resultset += number if number%2==0 }
		@resultset
	end
end