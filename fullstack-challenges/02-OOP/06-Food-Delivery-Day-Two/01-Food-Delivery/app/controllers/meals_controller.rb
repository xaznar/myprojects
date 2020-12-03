require_relative "../views/meals_view"
require_relative "../models/meal"

class MealsController
 def initialize(meal_repo)
  @meal_repo = meal_repo
  @view = MealsView.new
 end

 # USER ACTIONS

 def list
  # 1. Grab the meals from the repo (R)
  meals = @meal_repo.all
  # 2. Send them to view to display (V)
  @view.display(meals)
 end

 def add
  # 1. Ask user for name and price (V)
  name = @view.ask_for("name")
  price = @view.ask_for("price").to_i
  # 2. Make meal instance with info (M)
  meal = Meal.new(name: name, price: price)
  # 3. Add the meal to the repo (R)
  @meal_repo.add(meal)
 end


end
