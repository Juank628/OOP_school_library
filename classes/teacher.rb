require_relative './person'

class Teacher < Person
  def initialize(age, specialization, name = 'Unknown')
    super(age, name)
    @specialization = specialization
  end

  def can_use_service?
    true
  end

  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
