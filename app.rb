require_relative './classes/book'
require_relative './classes/student'

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
      Book.new('a', 'b')
      Book.all.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    end

    if option == 2
      Student.new(42, "A1")
      Student.all.each { |student| puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}" }
    end



    interface_active = false if option == 7

  end
end

main
