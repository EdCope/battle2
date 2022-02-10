require_relative '../lib/game'

describe Game do
  subject(:game){ described_class.new p1 = player1, p2 = player2 }
  let(:player1) { double("player1", :hp => 60)  }
  let(:player2) { double("player2", :hp => 60) }

  it "should have 2 players" do
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end

  it "should attack" do
    expect(player2).to receive(:damage_taken)
    game.attack(player2)
  end

end
