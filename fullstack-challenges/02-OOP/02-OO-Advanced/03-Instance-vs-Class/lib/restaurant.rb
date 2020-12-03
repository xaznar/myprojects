class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :city, :name
  attr_accessor :average_rating
  def initialize(city, name)
    @city = city
    @name = name
    @number_of_ratings = 0
    @sum_of_ratings = 0
    # TODO: implement constructor with relevant instance variables
  end


  # instance method:

  def rate(new_rate)
    @number_of_ratings += 1
    @sum_of_ratings += new_rate
    @average_rating = @sum_of_ratings / @number_of_ratings
    puts @average_rating
  end

  # TODO: implement .filter_by_city and #rate methods
  def self.filter_by_city(restaurants, city)
    restaurants.select do |restaurant|
      restaurant.city == city
    end
  end
end


jules_verne = Restaurant.new("paris", "Jules Verne")
bluebird = Restaurant.new("london", "Bluebird")
daniel = Restaurant.new("london", "Daniel")
restaurants = [jules_verne, bluebird, daniel]
filtered_restaurants = Restaurant.filter_by_city(restaurants, "paris")
p filtered_restaurants
filtered_restaurants.each do |restaurant|
  puts "#{restaurant.name} - #{restaurant.city}"
end
