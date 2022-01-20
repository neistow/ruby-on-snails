def task_1()
	puts 'PI is: %0.2f' % [Math::PI]
end

def task_2()
	days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
	days.each do |day|
		puts day
	end
end

def task_3()
	colors = {red: '(255,0,0)', green: '(0,255,0)', blue: '(0,0,255)'}
	puts colors[colors.keys.sample]
end

def task_4()
	day_ranges = {
		morning: 6..12,
		day: 13..18,
		evening: 18..23,
		night: 23..6,
	}

	puts day_ranges
end

def task_5()
	dirty = '   hello, world   '
	puts dirty.strip
end

def task_6()
	first = 'hello'
	second = 'world'
	concat = "#{first}, #{second}"

	puts concat
end

class Point
    attr_accessor :x, :y

    def initialize(x,y)
        @x, @y = x, y
    end


    def +(other)
      Point.new(@x + other.x, @y + other.y)
    end


    def to_s
        "(#{@x}, #{@y})"
    end
end

def task_8()
	p1 = Point.new(3, 6)
	p2 = Point.new(-1, 5)
	p3 = p1 + p2
	puts p3
end

def task_9()
	puts $LOAD_PATH
	puts $LOAD_PATH.length
end

