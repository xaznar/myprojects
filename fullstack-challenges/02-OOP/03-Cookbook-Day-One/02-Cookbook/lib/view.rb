class View

  def ask_for(stuff) # Defining a method with parameter (stuff)
    puts "What's the #{stuff} please?"
    gets.chomp
  end

  def display(recipes) # Array of recipe instances
    recipes.each_with_index do |recipe, index|
      # recipe is an instance
      puts "#{index + 1}. ~ #{recipe.name} - #{recipe.description}"
    end
  end

end
