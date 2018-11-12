describe "Players can enter names", type: :feature do

  it "Players can enter names and see them displayed" do
    visit "/"
    player_1 = "Stuart"
    player_2 = "Andrew"
    fill_in("player_1", with: "Stuart")
    fill_in("player_2", with: "Andrew")
    click_button("Play!")
    expect(page).to have_content "Hello #{player_1} and #{player_2}!"
  end

end
