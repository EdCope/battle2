describe "print Homepage", type: :feature do
  it "returns Testing infrastructure working!" do
    visit "/"
    expect(page).to have_content "Testing infrastructure working!"
  end
end

describe "names", type: :feature do
  it "allows people to enter their name" do
    sign_in_and_play
    expect(page).to have_content 'Camilla vs Ed'    
  end
end

describe "hit points", type: :feature do
  it "shows the user health score" do
    sign_in_and_play
    expect(page).to have_content 'Ed 60 hit points'
  end
end

feature "attack" do
  scenario " attacking a player" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Camilla attacked Ed' 
  end

  scenario "reduce player 2 hp by 10" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Ed's HP: 50"
  end

end

feature "next_turn" do
  scenario "switching from player_1 to player_2" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Next Turn'
    expect(page).to have_content "Ed's go"
  end
end


