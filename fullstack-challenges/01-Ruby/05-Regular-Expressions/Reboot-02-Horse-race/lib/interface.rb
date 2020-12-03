# TODO: you can build your horse race program here!
# Pseudo-code:
# 1. Print welcome
# 2. Print the horses names (we're modelizing our horses with an array, to display: each)
# 3. ask the user what he wants to bet on
# 4. Get user's bet (string)
# 5. the user is playing against the computer: we need to generate the computer_bet (sample)
# 6. Run the race 🐴 : depends => condition where we compare the choices of user & computer
    # if the user bet is the same as the computer bet
    #   "you win"
    # else
    #   "you lose"
    # end
# 4. Print results


horses = ["Joe", "Jon", "Bob", "Mike"]
user_balance = 100

puts "Welcome!"

p "The horses: Joe, Jon, Bob, Mike"
p
puts "Place your bet on a horse!"


user_horse = gets.chomp

computer_horse = horses.sample

if
user_horse == computer_horse
  puts "You win! You chose #{user_horse} and the
  computer chose #{computer_horse}! Your balance
  went up by 50"
  user_balance = user_balance + 50
else
  puts "You lose, you chose #{user_horse} and
  the computer chose #{computer_horse} ! Your balance
  went down by 10"
user_balance = user_balance - 10


end

puts "Your balance is now #{user_balance}"


# second version with a looping logic & a balance
# I need to have a balance variable with 100euros
# if I win, my balance gets increased by 50euros (incrementation of the balance)
# If I lose, my balance gets decrease by 10euros (decrementation of the balance)
 # Let's make sure the user can't play if she/he does not have enough money.
# => this is the condition of the looping


#while balance is more or equal to 10 euros
#  i should play the horses bet game
#end




