require_relative './classes/person'
require_relative './classes/student'
require_relative './classes/teacher'

person1 = Person.new(41, 'Juan', parent_permission: false)
student1 = Student.new(14, 'A1', 'Carlos', parent_permission: false)
teacher1 = Teacher.new(28, 'Math', 'Carlos', parent_permission: false)

p(person1)
p(person1.can_use_service?)

p(student1)
p(student1.play_hooky)

p(teacher1)
p(teacher1.can_use_service?)
