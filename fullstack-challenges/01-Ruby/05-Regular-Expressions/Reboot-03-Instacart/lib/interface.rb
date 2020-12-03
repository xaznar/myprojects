# TODO: you can build your instacart program here!
# Pseudo-code
# 1. Print Welcome to the user
# 2. Define your store (what items are for sale?) and print him the items
# each
# 3. Ask user what he wants to buy
# 4. Store the user_input inside of a variable (string)
# be careful!!!: we want to check that the user_input exists in the store,we can do so in ruby by checking that the user_input is a key of the store_items hash
# 5. add the user input to the array shopping_bag (create action in an array)
# 6. Print the bill (checkout)
# 7. Make it a loop: so the user can keep on adding items in his shopping bag
# while /until

shopping_bag = []

puts "Welcome to my store!"

items = {
  "apple" => 0.50,
  "pear" => 0.60,
  "banana" => 0.40,
  "mango" => 0.80
}

items.each do |x, y|
  puts "#{x} costs #{y}"
end

puts "What would you like to buy?"
user_input = gets.chomp if items.key?(user_iput)

puts "How many would you like to buy?"
user_nr_items = gets.chomp.to_i

shopping_bag << user_input




shopping_bag.each do |key, value|
  puts "#{key} - #{value}"
end



# we need to change the shopping_bag to a hash instead of an array

# we need to know how to add an element in a hash

    # name_of_the_hash[name_of_the_key] = value
# we need to take into consideration the quantity when we sum our bill
# when you iterate over your shopping bag, you need to multiply the price by the quantity


