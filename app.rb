require_relative './classes/book'
require_relative './classes/student'
require_relative './classes/teacher'
require_relative './classes/person'
require_relative './classes/rental'

def option1
  Book.all.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
  puts ''
end

def option2
  Student.all.each { |student| puts "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}" }
  Teacher.all.each { |teacher| puts "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}" }
  puts ''
end

def option3
  print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
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
  puts "Person created successfully \n\n"
end

def option3_type2
  print 'Age: '
  age = gets
  print 'Name: '
  name = gets.chomp
  print 'Specialization: '
  specialization = gets.chomp
  Teacher.new(age, specialization, name)
  puts "Person created successfully \n\n"
end

def option4
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp
  Book.new(title, author)
  puts "Book created successfully \n\n"
end

def option5
  puts 'Select a book from the following list by numbers:'
  books_list = Book.all
  books_list.each_with_index do |book, index|
    puts "#{index}) Title: \"#{book.title}\" Author: #{book.author}"
  end
  book_index = gets.to_i
  puts ''

  puts 'Select a person from the following list by numbers:'
  persons_list = Person.all
  persons_list.each_with_index do |person, index|
    puts "#{index}) [#{person.class.name}] Name: #{person.name} ID: #{person.id} Age: #{person.age}"
  end
  person_index = gets.to_i
  puts ''

  print 'Date: '
  date = gets.chomp
  new_rent = Rental.new(date, books_list[book_index], persons_list[person_index])
  books_list[book_index].add_rental(new_rent)
  persons_list[person_index].add_rental(new_rent)
  puts "Rental created successfully \n\n"
end

def option6
  print 'ID of person: '
  id = gets.to_i
  filter_list = Rental.all.select { |rental| rental.person.id == id }
  puts 'Rentals:'
  filter_list.each { |rental| puts "Date: #{rental.date}, Book: \"#{rental.book.title}\" by #{rental.book.author}" }
  puts ''
end

def main
  interface_active = true
  puts "Welcome to School Library App! \n\n"

  while interface_active
    puts 'Please choose an option by enterin a number:'
    puts '1 - List of all books'
    puts '2 - List of all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rental for a given person id'
    puts '7 - Exit'

    option = gets.chomp.to_i
    if option > 6 || option < 1
      puts 'Thank you for using this app'
      break
    end

    send("option#{option}")
  end
end

main
