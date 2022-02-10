require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new (name = "Tim") }
  it "should return the players name" do
    expect(player.name).to eq "Tim"
  end

end