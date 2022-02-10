class Game
  attr_reader :player_1, :player_2, :attacked_first

  def initialize(p1 = nil, p2 = nil)
    @player_1 = p1
    @player_2 = p2
    @attacked_first = @player_2
  end

  def attack(player_receving_damage)
    if player_receving_damage == @player_1
      @attacked_first = @player_2
    else
      @attacked_first = @player_1
    end

    player_receving_damage.damage_taken
  end

end
