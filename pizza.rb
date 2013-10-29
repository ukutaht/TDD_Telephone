class Pizza
  attr_reader :title, :description, :toppings, :time_baked
  
  def initialize(title, description, toppings, time_baked = 0)
    @title = title
    @description = description
    @toppings = toppings
    @time_baked = time_baked
  end

  def required_bake_time
    900 + toppings.map{|topping| topping.bake_time}.max
  end

  def bake(time)
    @time_baked += time
  end


end

class Topping
  attr_reader :bake_time
  def initialize(bake_time)
    @bake_time = bake_time
  end
end
