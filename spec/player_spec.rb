require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new (name = "Tim") }
  it "should return the players name" do
    expect(player.name).to eq "Tim"
  end

  it "should have hit point on initialise" do
    expect(player.hp).to eq 60
  end

  it "should change hit points by 10" do
    expect{player.damage_taken(10)}.to change{player.hp}.by(-10)
  end

end