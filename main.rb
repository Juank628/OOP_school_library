require_relative './app'

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
