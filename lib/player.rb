class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 60
  end

  public 
  
  def damage_taken(damage)
    @hp -= damage
  end

end