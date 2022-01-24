require 'time'

class Hello
	def say_hello()
		hour = Time.now.hour
		if hour >= 6 and hour < 12
			STDOUT.puts 'Morning!'
		elsif hour >= 12 and hour < 18
			STDOUT.puts 'Day!'
		elsif hour >= 18 and hour <= 23
			STDOUT.puts 'Evening!'
		elsif hour >= 0 and hour < 6
			STDOUT.puts 'Night!'
		end
	end
end