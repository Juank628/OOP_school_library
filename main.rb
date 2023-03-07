require_relative './classes/person'
require_relative './classes/decorator_capitalize'
require_relative './classes/decorator_trimmer'

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = DecoratorCapitalize.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = DecoratorTrimmer.new(capitalized_person)
p capitalized_trimmed_person.correct_name
