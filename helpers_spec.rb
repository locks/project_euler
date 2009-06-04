require File.join(File.dirname(__FILE__), "helpers.rb")

describe Metodos do
	before do
		@metodos = Object.new.extend Metodos
	end
	
	context "working properly" do
		it "should return fibonacci sequence" do
			@metodos.fibonacci(1,2,4).should == [1,2,3]
		end
	
	
		it "should sums all elements of an array" do
			@metodos.sum_digits("123").should == 6
		end
	
		it "should calculate n!" do
			@metodos.fact(3).should == 6
		end
	end

	context "not working properly" do
		it "should not return fibonacci sequence" do
			@metodos.fibonacci(1,2,10).should_not == [1,2,3]
		end
	
		it "should not sum digits of a number" do
			@metodos.sum_digits("1234").should_not == 6
		end
	
		it "should not calculate n!" do
			@metodos.fact(10).should_not == 6
		end
	end
end