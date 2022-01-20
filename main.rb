# Person
class User
	# Contructor
	def initialize(full_name, age, country)
		@full_name = full_name
		@age = age
		@country = country
	end

	# Intoruce yourself to the world
	def introduce()
		puts "My name is #{@full_name}. I'm #{@age} years old and I live in #{@country}"
	end
end

user = User.new("Carl", 40, "Spain")
user.introduce