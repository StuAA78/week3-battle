describe 'Player one attacks', type: :feature do
  it "Show that it is now player 2's turn" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "You attacked Sharon"
  end
end
