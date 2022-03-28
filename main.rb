class Hello
  def initialize(name)
    @name = name
  end

  def say
    "Hello, #{@name}!"
  end
end

hello = Hello.new('test')
puts hello.say


class User
  def initialize(name, surname, third_name)
    @name = name
    @surname = surname
    @third_name = third_name
  end

  attr_accessor :name, :surname, :third_name
end

user = User.new('name', 'surname', 'third_name')


class Group
  def initialize(*users)
    @users = users
  end

  def each
    @users.each { |user| puts user }
  end
end

group = Group.new(user, User.new('a', 'b', 'c'))
group.each


class Foo
  def initialize(methods)
    methods.each { |method| define_singleton_method(method[0]) { method[1] } }
  end
end

foo = Foo.new({ 'one' => 1, 'two' => 2 })
puts foo.first


class List
  def initialize(*args)
    @args = args
  end

  def each(&block)
    block.call(@args)
  end
end

list = List.new(1, 3, 10, 25)
list.each { |arg| puts arg }
