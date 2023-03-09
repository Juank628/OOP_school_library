require_relative './classes/book'
require_relative './classes/student'
require_relative './classes/teacher'

def option1
  Book.all.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
end

def option2
  Student.all.each { |student| puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}" }
  Teacher.all.each { |teacher| puts "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}" }
end

def option3
  puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]'
  type = gets.chomp.to_i
  option3_type1 if type == 1
  option3_type2 if type == 2
end

def option3_type1
  print 'Age: '
  age = gets
  print 'Name: '
  name = gets.chomp
  print 'Has parent permission? [Y/N]: '
  permission = gets.downcase
  permission_traslator = { y: true, n: false }
  Student.new(age, nil, name, parent_permission: permission_traslator[permission])
end

def option3_type2
  print 'Age: '
  age = gets
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  Teacher.new(age, specialization, name)
end

def main
  interface_active = true

  while interface_active
    puts 'Welcome to School Library App!'
    puts 'Please choose an option by enterin a number:'
    puts '1 - List of all books'
    puts '2 - List of all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rental for a given person id'
    puts '7 - Exit'
    option = gets.chomp.to_i

    option1 if option == 1
    option2 if option == 2
    option3 if option == 3

    interface_active = false if option == 7

  end
end

main
