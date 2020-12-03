# TODO: you can build your calculator program here!
# 1. Say hello to the user
# 2. Ask user for the first number
# 3. Get user answer
# 4. Ask user for second number
# 5.




#play_again = "Y"

#while play_again == "Y"




#puts "Hi there! Give us a number please"
#user_number = gets.chomp.to_i


#puts "Give us a 2nd nr please"
#user_number2 = gets.chomp.to_i


#puts "Do you want to add, subtract, multiply or divide these numbers?"
#user_input = gets.chomp



#if
#user_input == "+"
 # result = user_number + user_number2
#elsif user_input == "-"
#  result = user_number - user_number2
#elsif user_input == "*"
#  result = user_number * user_number2
#elsif user_input == "/"
#  result = user_number / user_number2
#else
#  puts "please enter existing operator"
#end


#puts result


#puts "do you want to play again? Y/N?"
#play_again = gets.chomp
#end








































# 1. Say hello to the user
# 2. Ask user for the first number
# 3. Get user answer
# 4. Ask user for second number
# 5. etc.

require_relative "calculator.rb"

play_again = "y"

until play_again == "n"

puts "hi! give me a nr"
first_nr = gets.chomp.to_i

puts "hi! give me a second nr"
second_nr = gets.chomp.to_i

puts "do you want to +, -, * or / ?"
operator = gets.chomp




puts "Do you want to play again? (y/n)"
play_again = gets.chomp



end






