class P013
	attr_reader :list
	
	def initialize
		@list    = 0
		@numbers = 0
	end
	
	def read_file
		@list = File.open("013.txt", "r") { |file| file }
	end
	
	def split_lines
		@list.each_line { |line| @numbers.push(line) }
	end
	
	def sum_numbers
		@numbers.each.inject(0) { |sum, number| sum + number }
	end
	
	def get_ten_digits
		@result.slice(0...10)
	end
end