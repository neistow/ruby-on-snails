class User
  def initialize(&block)
    block.call self
  end

  def repr_str()
    return "My role is: #{get_role}"
  end

  def say()
    puts repr_str()
  end

  def to_s()
    return repr_str()
  end

  attr_accessor :name, :surname, :third_name
end

class Author < User
  def get_role()
    return 'Author'
  end
end

class Moderator < Author
  def get_role()
    return 'Moderator'
  end
end

class Admin < Moderator
  def get_role()
    return 'Admin'
  end
end


u = Author.new do |obj|
  obj.name = 'Name'
  obj.surname = 'Surname'
  obj.third_name = 'Third Name'
end

u.say()
puts u.to_s()
