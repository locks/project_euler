require File.join(File.dirname(__FILE__), "helpers.rb")

class P020
	include Metodos
	attr_reader :result, :digits
	
	def initialize
		@result = 0
		@digits = 0
	end
	
	def get_digits
		@digits = fact(100)
	end
	
	def sum
		@result = sum_digits( @digits )
	end
end