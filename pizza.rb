class Pizza
  attr_reader :title, :description, :time_baked, :toppings
  def initialize(title, description, toppings)
    @title = title
    @description = description
    @time_baked = 0
    @toppings = toppings

  end

  def required_bake_time
    @time_baked = 910
  end


end

class Topping

  def initialize(quantity)
    @quantity = quantity 
  end 

end

