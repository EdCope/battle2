class Game
  attr_reader :player_1, :player_2

  def initialize(p1 = nil, p2 = nil)
    @player_1 = p1
    @player_2 = p2
  end

  def attack(player_receving_damage)
    player_receving_damage.damage_taken
  end

end
