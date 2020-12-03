require_relative "../models/meal"
require_relative "base_repository"
require 'csv'

class MealRepository < BaseRepository
 # Child inherits the initialize method and the instance methods
 # - add, all

private

 def load_csv
  # CSV strings --> Ruby instances of meals
  csv_options = {headers: :first_row, header_converters: :symbol}

  CSV.foreach(@csv_file, csv_options) do |row|
     # row = #<CSV::Row id:"1" name:"tacos" price:"5">
     row[:id] = row[:id].to_i
     row[:price] = row[:price].to_i
     @elements << Meal.new(row)
  end
  @next_id = @elements.last.id + 1 unless @elements.empty?
 end

 # Ruby instances of elements --> CSV strings
 def save_to_csv
  CSV.open(@csv_file, 'w') do |row|
    row << ["id", "name", "price"] # Headerds
    @elements.each do |meal| # meal instance
      row << [meal.id, meal.name, meal.price]
    end
  end
end
end



