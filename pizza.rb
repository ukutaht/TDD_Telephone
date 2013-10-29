class Pizza
  attr_reader :title, :description, :time_baked, :toppings
  def initialize(title, description, toppings)
    @title = title
    @description = description
    @time_baked = 0
    @toppings = toppings

  end

  def required_bake_time
   
    if toppings.any?
      900 + toppings.map{|topping| topping.bake_time}.max
    else
      900
    end
  #   if @toppings.length > 0 #&& @toppings.length < 2 
  #     @time_baked = 910
  #   # else @toppings.length > 0 && @toppings.length <= 2
  # elsif @toppings.length >= 2
  #     @time_baked = 908
  #   else
  #     @time_baked = 900
    # end
  end

  def bake(time)
    baked? == false 
    @time_baked += time
    
  end

  def baked?
    if @time_baked >= 908 
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

  attr_reader :bake_time 
 
  def initialize(bake_time)
    @bake_time = bake_time 
  end 

end

