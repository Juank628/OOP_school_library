require_relative './nameable'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @age = age
    @name = name
    @parent_permission = parent_permission
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

  attr_accessor :age, :name
  attr_reader :id

  private :of_age?
end
