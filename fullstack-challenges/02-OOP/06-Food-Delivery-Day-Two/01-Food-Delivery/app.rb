require_relative "app/repositories/customer_repository"
require_relative "app/controllers/customers_controller"
require_relative "app/repositories/meal_repository"
require_relative "app/controllers/meals_controller"
require_relative "router.rb"


# MAGIC FILE - WHERE EVERYTHING COMES TO LIFE

# Testing our controller actions using the router

# Repositories
meal_repo = MealRepository.new("data/meals.csv")
customer_repo = CustomerRepository.new("data/customers.csv")

# Controllers
meals_controller = MealsController.new(meal_repo)
customers_controller = CustomersController.new(customer_repo)

# Router
router = Router.new(meals_controller, customers_controller)

router.run

