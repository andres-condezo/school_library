# Person: A class to define attributes and behaviors
class Person
  # Constructor to initialize
  def initialize(age, name = 'Unknown', parent_permission = 'true')
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # accessor get and set method
  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    of_age? == true || @parent_permission
  end

  private

  def of_age?
    # I renamed the method name to fix the following offense:
    # Naming/PredicateName: Rename is_of_age? to of_age?.
    @age >= 18
  end
end
