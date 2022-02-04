require 'date'

STDOUT.sync = true

# Task 1
def get_day_by_num(num)
	days = { 
		 1 => 'Monday',
         2 => 'Tuesday',
         3 => 'Wednesday',
         4 => 'Thursday',
         5 => 'Friday',
         6 => 'Saturday',
         7 => 'Sunday' }
	return days[num]
end

puts ARGV.length

# Task 2
if ARGV.all? { |x| Integer(x) rescue false} && ARGV.length == 3
  $stdout.puts "Max num: #{ARGV.map(&:to_i).max}"
else
  puts 'Invalid input'
end

# Task 3
students = ['b', 'a', 'f', 'z', 'x', 'l', 'k', 'd', 'r']
puts students.sort

# Task 4
end_of_month = Date.civil(Date.today.year, Date.today.month, -1).day

puts "\t#{Date::MONTHNAMES[Date.today.month]} #{Date.today.year}"

Date::DAYNAMES.map { |day| day[0..2] }.each_with_index do |e, i|
  print e
  day_of_month = i - (Date.today - Date.today.mday + 1).cwday + 2

  while day_of_month <= end_of_month
    print day_of_month.zero? ? '' : " #{day_of_month}"
    day_of_month += 7
  end
  puts
end