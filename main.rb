module TeamRole
  TEAMLEAD = 1
  BACKEND = 2
  FRONTEND = 3
  QA = 4
  DESIGNER = 5
end

class Unit
  class Employee
    def initialize(name, surname, role)
	@name = name
	@surname = surname
	@role = role
    end
   
    def to_s
      "#{@name} #{@surname} #{@role}"
    end

    attr_reader :name, :surname, :role
  end
  
  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees.push(employee)
  end
  
  def remove_employee(employee)
    @employees.delete(employee)
  end

  def get_by_id(id)
    return @employees.find(id)
  end

  def print(filter_by_role = nil)
    puts @employees
           .sort { |a, b| "#{a.name} #{a.surname}" <=> "#{b.name} #{b.surname}"}
           .select { |emp| filter_by_role == nil ? true : emp.role == filter_by_role }
  end
end

unit = Unit.new
emp1 = Unit::Employee.new('bb', 'bb', TeamRole::QA)

unit.add_employee(emp1)
unit.print

puts '------'

emp2 = Unit::Employee.new('aa', 'aa', TeamRole::TEAMLEAD)
unit.add_employee(emp2)

unit.print(TeamRole::TEAMLEAD)

puts '------'

unit.print
