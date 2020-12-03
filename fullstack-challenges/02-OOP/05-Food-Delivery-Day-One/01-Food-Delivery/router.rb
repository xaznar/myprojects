class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    while @running
      choice = display_menu
      print `clear`
      action(choice)
    end
  end

  def display_menu
    puts "-" * 35
    puts "---------------MENU----------------"
    puts "Welcome, what would you like to do? 👻"
    puts "-" * 35
    puts "1. List all meals 🌮"
    puts "2. Add a meal 🍔"
    puts "3. Add a customer 👩🏼‍🎤"
    puts "4. List all customers 👫"
    puts "9. Exit the app 🚪"
    print "> "
    gets.chomp.to_i
  end

  def action(choice)
    case choice
    when 1 then @meals_controller.list
    when 2 then @meals_controller.create
    when 3 then @customers_controller.create
    when 4 then @customers_controller.list
    when 9
      puts "Goodbye! 👋"
      @running = false
    end

  end

end
