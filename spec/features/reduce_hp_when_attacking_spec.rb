describe "Attacks can do damage", type: :feature do

  it "Players can enter names and see them displayed" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Sharon HP: 50"
  end

end
