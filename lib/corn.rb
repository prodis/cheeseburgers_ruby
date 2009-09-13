class Corn < Sandwich
  def initialize(real_sandwich)
    super real_sandwich
  end

  def description
    "#{@real_sandwich.description}, Corn"
  end

  def calories
    @real_sandwich.calories + 70
  end
end

