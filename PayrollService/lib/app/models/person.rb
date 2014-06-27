class Person
  attr_reader :name
  attr_reader :salary

  def initialize (name, salary)
    @name = name
    @salary = salary
  end

  def initialize attributes
    @name = attributes[:name]
    @salary = attributes[:salary]
  end

  def == other
    other.is_a?(Person) && other.name == name
  end
end