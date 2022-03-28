class TeddyBear
end

class Ball
end

class Cube
end

class Factory
  @@teddy_bear_count = 0
  @@ball_count = 0
  @@cube_count = 0

  def self.total
    @@teddy_bear_count + @@ball_count + @@cube_count
  end

  def self.offers
    { 'teddy_bear' => @@teddy_bear_count, 'ball' => @@ball_count, 'cube' => @@cube_count }
  end

  def self.build(type)
    case type
    when :teddy_bear
      @@teddy_bear_count += 1
      TeddyBear.new
    when :ball
      @@ball_count += 1
      Ball.new
    when :cube
      @@cube_count += 1
      Cube.new
    else
      raise 'unknown toy'
    end
  end
end

Factory.build(:teddy_bear)
puts Factory.offers
puts Factory.total


####

class Integer
  def minutes
    self * 60
  end

  def days
    hours * 24
  end

  def hours
    minutes * 60
  end
end

puts 5.minutes
puts 2.hours
puts 1.days

####

class Substance
  def initialize(status)
    raise 'unknown status' if status != 'solid' && status != 'liquid' && status != 'gas'
    @status = status
  end

  attr_reader :status

  def melt
    raise 'substance is not solid' if status != 'solid'
    to_liquid
  end

  def freeze
    raise 'substance is not liquid' if status != 'liquid'
    to_liquid
  end

  def boil
    raise 'substance is not liquid' if status != 'liquid'
    to_liquid
  end

  def condense
    raise 'substance is not gas' if status != 'gas'
    to_liquid
  end

  def sublime
    raise 'substance is not solid' if status != 'solid'
    to_liquid
  end

  def deposit
    raise 'substance is not gas' if status != 'gas'
    to_liquid
  end

  private

  def to_liquid
    @status = 'liquid'
  end

  def to_solid
    @status = 'solid'
  end

  def to_gas
    @status = 'gas'
  end
end

substance = Substance.new('solid')
substance.melt
puts substance.status
