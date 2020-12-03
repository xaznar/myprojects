require "csv"
require_relative "recipe"

class Cookbook # Repository - acts as the DB and stores data in 2 places:
  #1. Ruby memory in @recipes array
  #2. CSV file on hardrive
  def initialize(csv_file)
    @recipes = [] # Ruby memory: where the recipe instances are kept
    @csv_file = csv_file
    load_csv # V important to call load here on the last line to fill our @recipes array with instances so we can use the methods on them
  end

  #CRUD

  #CREATE
  def add_recipe(recipe)
    @recipes << recipe # Save in ruby memory
    save_to_csv # Save to hard-drive in csv
  end

  #READ ALL
  def all
    @recipes
  end

  #DELETE
  def remove_recipe(index)
    @recipes.delete_at(index)
    save_to_csv
  end

  private

  # PARSING CSV AND SAVING TO CSV

  # CSV strings --> Ruby recipe instances
  def load_csv
    CSV.foreach(@csv_file) do |row|
      # row = ["Tortilla", "Eggs and potatoes"]
       # index    0       ,     1
      name = row[0]
      description = row[1]
      @recipes << Recipe.new(name, description)
    end
  end

  # Ruby recipe instances --> Csv strings in rows
  def save_to_csv
    CSV.open(@csv_file, 'w') do |csv_row|
      @recipes.each do |recipe|
        #recipe is an instance
        csv_row << [recipe.name, recipe.description]
      end
    end
  end















end
