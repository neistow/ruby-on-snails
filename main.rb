require 'date'
require_relative 'hello'

STDOUT.sync = true

# Task 1
STDOUT.puts "ARGV sum is: #{ARGV.map { |x| x.to_i }.sum}"

# Task 2
STDOUT.puts "Enter your birthday (YYYY-MM-DD):"
STDOUT.puts "You are #{((Date.today - Date.parse(STDIN.gets)) / 365).to_i} year(s) old"

# Task 3
hello = Hello.new
hello.say_hello