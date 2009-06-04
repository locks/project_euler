require File.join(File.dirname(__FILE__), "025.rb")
require File.join(File.dirname(__FILE__), "helpers.rb")

describe P025 do
	before(:all) do
		@problem = P025.new
		@helper  = Object.new.extend Metodos
	end
	
	it "should have value of 0" do
		@problem.value.should == 0
	end

	it "should return number with 1000 digits" do
		@problem.run(10**999)
		@problem.result.to_s.size.should == 1_000
	end

end
