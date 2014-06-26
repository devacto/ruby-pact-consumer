class Person
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def == other
    other.is_a?(Person) && other.name == name
  end
end