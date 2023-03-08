require_relative './classes/person'
require_relative './classes/decorator_capitalize'
require_relative './classes/decorator_trimmer'
require_relative './classes/classroom'
require_relative './classes/student'
require_relative './classes/rental'
require_relative './classes/book'

# Project 2: Decorators
person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = DecoratorCapitalize.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = DecoratorTrimmer.new(capitalized_person)
p capitalized_trimmed_person.correct_name

# Project 3: Relations
classroom_a1 = Classroom.new('A1')
student1 = Student.new(17, nil)
classroom_a1.add_student(student1)

p student1
p classroom_a1

person2 = Person.new(41, 'Juan')
book1 = Book.new('The Island', 'Issac')
book2 = Book.new('Horror history', 'Carl')
rental1 = Rental.new(Time.now, book1, person2)
rental2 = Rental.new(Time.now, book2, person2)

p rental1
p rental2
