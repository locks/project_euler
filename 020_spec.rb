require '020.rb'
require 'helpers.rb'

describe P020 do
	before(:all) do
		@numero = P020.new
		@helper = Object.new.extend Metodos
	end
	
	it "should calculate 100!" do
		@numero.fact(100).should == @helper.fact(100)
	end
	
	context "before operations" do
		it "should have a result of zero" do
			@numero.result.should == 0
		end
		
		it "should not have digits" do
			@numero.digits.should == 0
		end
	end
	
	context "after operations" do
		before(:all) do
			@numero.get_digits
			@numero.sum
		end
		
		it "should return digits" do
			@numero.digits.should == @helper.fact(100)
		end
			
		it "should return sum of digits" do
			@numero.result.should == 648
		end
	end
end