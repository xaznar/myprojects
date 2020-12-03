require_relative "restaurant"
# We require the restaurant file.
# We create a restaurant variable to which we give the new parameters (burgers, beer etc)

xavi_restaurant = Restaurant.new("hamburgers", "beer", "slow")
alejandro_restaurant = Restaurant.new("pasta", "wine", "good")

p xavi_restaurant
xavi_restaurant.order_xavi("Big Mac", "Stella")

# we p out the xavi_restaurant variable with the  parameters specified in the
# method 'order_xavi' with the arguments "big mac and stella"
p xavi_restaurant
p alejandro_restaurant
