require_relative "base_repository"
require_relative  "../models/employee"

class EmployeeRepository < BaseRepository
undef :add

 def load_csv
  # CSV strings --> Ruby instances of meals
  csv_options = {headers: :first_row, header_converters: :symbol}

  CSV.foreach(@csv_file, csv_options) do |row|
     # row = #<CSV::Row id:"1" name:"tacos" price:"5">
     row[:id] = row[:id].to_i
     @elements << Employee.new(row)
  end
  @next_id = @elements.last.id + 1 unless @elements.empty?
 end

 # Ruby instances of elements --> CSV strings
 def save_to_csv
  CSV.open(@csv_file, 'w') do |row|
    row << ["id", "username", "password", "role"] # Headerds
    @elements.each do |employee| # meal instance
      row << [employee.id, employee.username, emplyee.password, employee.role]
    end
  end
end






def all_delivery_guys
   @elements.select do|employee|
    employee.role == "delivery_guy"
  end
end

def find_by_username(username)
  @elements.find do |employee|
employee.username == username
end



 end



end





# require_relative "base_repository"
# require_relative "../models/customer"

# class EmployeeRepository < BaseRepository

#  private

#  def load_csv # From CSV strings ---> Ruby instances of element
#   csv_options = {headers: :first_row, header_converters: :symbol}
#   CSV.foreach(@csv_file, csv_options) do |row|
#     #row is now a hash --> {id: "1", name: "Iri", address: "Lisbon"}
#     row[:id] = row[:id].to_i
#     row[:address] = row[:address]
#     @elements << Customer.new(row) # @elements because this is now found in the Base Repository
#   end
#   @next_id = @elements.last.id + 1 unless @elements.empty?
#  end

#  def save_to_csv # From ruby instances ---> csv strings
#   CSV.open(@csv_file, 'wb') do |row|
#     row << ["id", "name", "address"]
#     @elements.each do |customer| # @elements because this is now found in the Base Repository
#       row << [customer.id, customer.name, customer.address]
#     end
#    end
#  end

# end
