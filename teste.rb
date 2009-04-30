(0..10).each do |i|
	(i % 2 == 0) ?
		next : puts "YOINK: " + i.to_s
end
