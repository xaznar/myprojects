numbers = [1, 4, 6, 8]

# simple each
numbers.each do |n|
  puts n
end


downcased_letters_collection = ['a', 'b', 'c']

# initialize a new array to store upcased letters
upcased_letters_collection = []

# loop over the array

# letters: the array with data
# each: we want to loop over that data
# do |param| : we pass the each iterator a block
# puts param: code that you want to execute for every element
# end: end of the block

downcased_letters_collection.each do |a_single_letter|
  p a_single_letter

  # upcase the letter
  upcaseletter = a_single_letter.upcase
  p upcaseletter
  # add the letter to the new array
  # array_you_want_to_fill << value
  upcased_letters_collection << upcaseletter
  p upcased_letters_collection
end
# puts the new array to check our work
puts "finished!"
puts upcased_letters_collection
