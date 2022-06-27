class Player
  attr_accessor :name, :life
  
  def initialize(name, life)
    @name = name
    @life = life
  end

  def deduct_life
    @life -= 1
  end
end
