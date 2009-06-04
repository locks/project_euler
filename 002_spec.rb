require File.join(File.dirname(__FILE__), "002.rb")
require File.join(File.dirname(__FILE__), "helpers.rb")

describe P002 do

	before(:all) do
		@numero = P002.new(1,2,4_000_000)
		@metodos = Object.new.extend Metodos
	end
	
	context "when first created" do
		it "should have a resultset of zero" do
			@numero.resultset.should == 0
		end
		
		it "should have a fibonacci sequence" do
			@numero.sequence.should == @metodos.fibonacci(1, 2, 4_000_000)
		end
	end
	
	context "after running" do
		before(:all) do
			@numero.calcular
		end
		
		it "should have a resultset of 4613732" do
			@numero.resultset.should == 4613732
		end
	end
	
end