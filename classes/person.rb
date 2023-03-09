require_relative './nameable'

class Person < Nameable
  attr_accessor :age, :name, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown')
    super()
    @id = rand(1000)
    @age = age
    @name = name
    @rentals = []
  end

  def of_age?
    age >= 18
  end

  def can_use_service?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental)
    rental.person = self
  end

  private :of_age?
end
