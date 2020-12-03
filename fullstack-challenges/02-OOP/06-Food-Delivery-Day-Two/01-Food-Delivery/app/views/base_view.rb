class BaseView

  def display(elements) # Array of instances
    elements.each_with_index do |element, index|
      # element is an instance
      puts "#{index + 1}. ~ " +  element.display_in_list # Go to the model and call the instance method display in list
    end
  end

  def ask_for(stuff)
    puts "What's the #{stuff} please?"
    gets.chomp
  end



end
