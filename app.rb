require_relative './classes/book'

def main
  interface_active = true

  while interface_active
    p 'Welcome to School Library App!'
    p 'Please choose an option by enterin a number:'
    p '1 - List of all books'
    p '2 - List of all people'
    p '3 - Create a person'
    p '4 - Create a book'
    p '5 - Create a rental'
    p '6 - List all rental for a given person id'
    p '7 - Exit'
    option = gets.chomp

    if option = 1
        
    end

    interface_active = false if option == '7'

  end
end

main
