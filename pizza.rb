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

  def bake(time)
    baked? == false 
    @time_baked += time
    
  end

  def baked?
    if @time_baked >= 910 
      true
    else
      false
    end
    
  end


  # def time_baked
  #   time_baked + 10 
  # end



end

class Topping

  def initialize(quantity)
    @quantity = quantity 
  end 

end

