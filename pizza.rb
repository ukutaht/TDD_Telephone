class Pizza
  attr_reader :title, :description, :time_baked, :toppings
  def initialize(title, description)
    @title = title
    @description = description
    @time_baked = 0
    @toppings = []

  end

  def self.toppings
    @topping = Topping.new 
    @toppings << @topping
    @toppings
  end 
end

class Topping


end

