class Employee

  def initialize (attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @role = attributes[:role]
  end

  def manager?
    @role == "manager"
  end

  def delivery_guy?
    @role == "delivery_guy"
  end


end
