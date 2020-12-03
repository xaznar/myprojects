# We end the meth
# Here we create a class (Restaurant)
class Restaurant
  def initialize(food, drink, service)
# We define a method (initialize) which has the parameters food, drink and service
    @food = food
    @drink = drink
    @service = service
# We specify the instance variables
  end
# We end the method
  def order_xavi(hamburgers, beer)
    puts "Here is you #{hamburgers} and your #{beer}"
    @hamburgers = hamburgers
    @beer = beer
  end
# We created a method that takes the variables hamburger and beer. We
# specify the instances
end
