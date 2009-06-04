require File.join(File.dirname(__FILE__), "helpers.rb")

class P025
	include Metodos
	attr_accessor :value
	
	def initialize
		@value = 0
	end

	def run(limit)
		@value = fibonacci(1,1,limit)
	end

	def result
		@value.last
	end

end
