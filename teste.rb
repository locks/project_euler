print "Enter a number: "
max_number = gets.to_i
number = 7
low_max = Math.sqrt(max_number)
base_primes = {}
current_pos = 0
prime = true

if max_number >= 2 # I need a few starter values
 puts "2"
 base_primes[current_pos] = 2
 current_pos = current_pos + 1
end # if
if max_number >= 3
 puts "3"
 base_primes[current_pos] = 3
 current_pos = current_pos + 1
end # if
if max_number >= 5
 puts "5"
 base_primes[current_pos] = 5
 current_pos = current_pos + 1
end # if
while number <= low_max # while number <= sqrt of max_number
                        # this will add all prime numbers up
                        # to low_max to the base_primes array
  for x in 0..base_primes.length  - 1
    if number % base_primes[x] == 0
     prime = false
    end # if
  end # for
  if prime == true
   base_primes[current_pos] = number
   current_pos = current_pos + 1
   puts number
  end # if
  prime = true
  number = number + 2
end # while

prime = true
l_length = base_primes.length - 1
current_position = 0
while number <= max_number # Starting at the first number after low_max
                           # simply print all primes
  while prime == true and current_position <= l_length
    if number % base_primes[current_position] != 0
     prime = true
    else
     prime = false
    end # if
   current_position = current_position + 1
  end # while
  if prime == true
   puts number
  end # if
 current_position = 0
 prime = true
 number = number + 2
end # while