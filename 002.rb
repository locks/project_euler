def conta(n, pre)
	n = n*4 + pre
end

## TRALALA

anterior = 0
numero = 2
sum = 0
fib = Array.new

while numero < 4_000_000
	fib.push numero
	
	temporario = numero
	numero = numero*4 + anterior
	anterior = temporario
end

fib.each do |i|
	sum = sum + i
end

puts sum