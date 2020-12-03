class Meal

  attr_reader :name, :price
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end

  # INSTANCE METHODS - can be called on an instance
  def display_in_list
    "#{@name.capitalize}, $#{@price}"
  end

end
