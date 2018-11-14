describe "While playing the game", type: :feature do

  it "Player 1 can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Sharon HP: 60"
  end

end
