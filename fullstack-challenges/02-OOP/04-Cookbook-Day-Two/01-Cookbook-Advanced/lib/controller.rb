require 'open-uri'
require 'nokogiri'
require_relative "view"
require_relative "recipe"

class Controller
  # Responsible for: implementing the user actions
  # The Controller is the Big Brain Octopus - going to the repo to grab tasks
  # and send to view to display or gettting user input from the view and
  # sending to the repo to store
#

def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
end

  def create
  # 1. Ask user for name and description (V)
    name = @view.ask_for("name of your recipe") # Calling the method with argument ("name")
    description = @view.ask_for("description of your recipe") # Calling the method with argument ("name")
    # 2. Make a recipe instance with the info (M)
    recipe = Recipe.new(name, description)
    # 3. Send to repo to store (R)
    @cookbook.add_recipe(recipe)
  end

  def list
    # 1. Get recipes from cookbook (R)
    recipes = @cookbook.all # recipes is the @recipes array
    # 2. Send them to the view to display (V)
    @view.display(recipes)
  end

  def destroy
 # 1. List recipes
    list
    # 2. Ask user for index (V)
    index = @view.ask_for("number of recipe to delete").to_i - 1
    # 3. Delete recipe at that index from repository
    @cookbook.remove_recipe(index)
  end


  def import
    name = @view.ask_for("ingredients you'd like a recipe for?")

# Up to you to find the relevant CSS query.

    url = "https://www.bbcgoodfood.com/search/recipes?query=#{name}"

    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)

    results = []

    html_doc.search('.teaser-item__title a').each do |element|
      results << element.text
    end

    @view.show_search_results(results)

  end



end



