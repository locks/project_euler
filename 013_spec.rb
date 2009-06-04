require '013.rb'

describe P013 do
	before(:all) do
		@problem = P013.new
	end

	context 'before operations' do
		it "should have list with size 0" do
			@problem.list.length.should == 0
		end
	end
	
	context 'after operations' do
		it "should read file" do
			@problem.read_file.should.equal(File.open("013.txt", "r") { |file| file })
		end
		
		it "should split lines" do
			@problem.split_lines.should.equal(
				File.open("013.txt", "r") { |file| file }
			)
		end
	end
end