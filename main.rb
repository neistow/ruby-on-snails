STDOUT.sync = true

# Task 1
puts "Enter number:"
num = gets.to_i

puts "Enter pow:"
pow = gets.to_i

res = num
(1..pow -1).each do || 
	res = res*=num
end
puts "Pow is: #{res}"

# Task 2
puts "Enter number:"
puts "Number is: #{gets.to_i & 1 == 1 ? 'Odd' : 'Even'}"

# Task 3
fst = 10
snd = 20
fst, snd = snd,fst

puts "fst: #{fst} snd: #{snd}"

# Task 4
puts "%.2f" % Math::PI