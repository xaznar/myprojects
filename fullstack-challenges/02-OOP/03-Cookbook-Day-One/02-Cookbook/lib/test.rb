require 'csv'
require_relative "recipe"
require_relative "cookbook"

# Here is where I can test my MODEL and REPOSITORY before I have a Controller.
# Once I have a controller I can use the app.rb and run the router to test

csv_file   = 'recipes.csv'
cookbook   = Cookbook.new(csv_file)

tortilla = Recipe.new("Tortilla", "Eggs and potatoes")
croquetas = Recipe.new("Croquettas", "Breaded cheese and ham and potatoes")

p cookbook.all
