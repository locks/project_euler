file = File.new("013.txt", "r")

text = file.readlines.map { |line| line.chomp }

soma = 0;

text.each do |linha|
	soma = soma + linha.to_i;
end

puts soma.to_s.slice 0...10
