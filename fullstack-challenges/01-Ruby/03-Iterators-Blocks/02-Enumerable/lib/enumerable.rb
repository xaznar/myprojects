class_age = [5, 8, 2, 6, 9, 1]
def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  sum = 0
  array.each_with_index do | element , index |
  if index.odd?
    sum = sum + element
  end
  # class_age.each_with_index(2) do | x |
  end
  return sum
end
puts sum_odd_indexed(class_age)


#example
#numbers = [1, 4, 6, 8]
# simple each
#numbers.each do |n|
#  puts n
#end

#defining the array
#mynumbers = [5, 8, 2, 6, 9, 1]
#the method I'm using
#def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
#I create a new variable (mynumbers_even) which does the following:
#mynumbers_even = mynumbers.each do | x |

# it iterates over the mynumbers variable and asks that those that,
#divisible by two, leave a remainder of '0',

musicians = ["Jon", "Paul", "Bob"]
musicians.map do | x |
  puts "Hello #{musicians}"
end

musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']

musicians.find { |musician| musician.split(' ').first == 'John' }
end






def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use of Enumerable#each_slice
end
