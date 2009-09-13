require 'forwardable'

class Sandwich
  extend Forwardable

  def initialize(real_sandwich)
    @real_sandwich = real_sandwich
  end
  
  def_delegators :@real_sandwich, :description, :calories
end

