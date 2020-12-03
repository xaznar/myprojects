class View

  def ask_for_new_meal # Defining a method with parameter (newmeal)
    puts "which meal would you like to add?"
    print "< "
    gets.chomp
  end

  def list(meals) # Array of meal instances
    meals.each do |meals, index|
      puts "#{index + 1}. ~ [#{x}]. #{meals.name} - #{meals.description}"
    end
  end

end
