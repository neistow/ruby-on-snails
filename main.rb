class Student

  attr_reader :mark
  attr_reader :full_name

  def initialize(full_name, mark)
    raise 'invalid mark' if mark < 1 || mark > 5

    @full_name = full_name
    @mark = mark
  end

end

students = [
	Student.new('1', 1),
        Student.new('2', 2),
        Student.new('3', 3),
        Student.new('4', 4),
        Student.new('5', 5),
        Student.new('6', 1),
        Student.new('7', 2),
        Student.new('8', 3),
        Student.new('9', 4),
        Student.new('10', 5)
]
average = students.map { |s| s.mark }.sum() / students.length
puts "Average is mark #{average}"

superior_students = students.select { |s| s.mark > average }.map{ |s| s.full_name }
puts "Superior students: #{superior_students}"

#####

planets = { 'Mercury' => 2,
            'Venus' => 3,
            'Earth' => 5,
            'Mars' => 4,
            'Jupiter' => 9,
            'Saturn' => 8,
            'Uranus' => 7,
            'Neptune' => 6,
            'Pluto' => 1 }.sort_by { |k, v| v }

puts planets.first(3)
puts planets.last(3)

###

it = ->(x) { x.flatten(1) }
puts it.([[[1, 2], 3], [4, 5, 6], [7, [8, [9]]]])

###

fibonacci = ->(x) { x < 2 ? x : fibonacci.(x - 1) + fibonacci.(x - 2) }
puts "Fib: #{fibonacci.(10)}"
