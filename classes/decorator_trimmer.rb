require_relative './decorator_base'

class DecoratorTrimmer < DecoratorBase
  def correct_name
    @nameable.correct_name.slice(0..9)
  end
end
