class Game
  attr_reader :player1, :player2

  def initialize(p1 = nil, p2 = nil)
    @player1 = p1
    @player2 = p2
  end

  def attack(player_receving_damage)
    player_receving_damage.damage_taken
  end

end
