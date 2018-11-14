describe "While playing the game", type: :feature do

  it "Player 1 can see player 2's hit points" do
    visit "/"
    player_1 = "Stuart"
    player_2 = "Andrew"
    fill_in("player_1", with: "Stuart")
    fill_in("player_2", with: "Andrew")
    click_button("Play!")
    expect(page).to have_content "#{player_2} HP: 20"
  end

end
