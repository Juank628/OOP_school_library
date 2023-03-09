require_relative './classes/book'
require_relative './classes/student'
require_relative './classes/teacher'

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

    if option == 1
      Book.all.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    end

    if option == 2
      Student.all.each { |student| puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}" }
      Teacher.all.each { |teacher| puts "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}" }
    end

    if option == 3
      puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]'
      permission_traslator = { y: true, n: false }
      type = gets.chomp.to_i
      if type == 1
        print 'Age: '
        age = gets
        print 'Name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.downcase
        Student.new(age, nil, name, parent_permission: permission_traslator[permission])
      end

      if type == 2
        print 'Age: '
        age = gets
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        Teacher.new(age, specialization, name)
      end
    end

    interface_active = false if option == 7

  end
end

main
