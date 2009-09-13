class PepperSauce < Sandwich
  def initialize(real_sandwich)
    super real_sandwich
  end

  def description
    "#{@real_sandwich.description}, Pepper Sauce"
  end

  def calories
    @real_sandwich.calories + 20
  end
end

