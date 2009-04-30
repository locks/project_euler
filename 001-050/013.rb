soma = 0;

File.open("013.txt", "r") do |file|
	file.each_line do |line|
		soma = soma + line.to_i;
	end
end

puts soma.to_s.slice(0...10)
