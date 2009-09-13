class OnionRings < Sandwich
  def initialize(real_sandwich)
    super real_sandwich
  end

  def description
    "#{@real_sandwich.description}, Onion Rings"
  end

  def calories
    @real_sandwich.calories + 140
  end
end

