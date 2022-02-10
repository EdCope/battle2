require_relative '../lib/game'

describe Game do
  subject(:game){ described_class.new p1 = player_1, p2 = player_2 }
  let(:player_1) { double("player_1", :hp => 60)  }
  let(:player_2) { double("player_2", :hp => 60) }

  it "should have 2 players" do
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  it "should attack" do
    expect(player_2).to receive(:damage_taken)
    game.attack(player_2)
  end

  it "should have turns" do
    expect(game.attacked_first).to eq player_2
  end

  it "should swap players turn" do
    expect(player_2).to receive(:damage_taken)
    game.attack(player_2)
    expect(game.attacked_first).to eq player_2
  end

end
