describe 'Player one attacks', type: :feature do
  it 'Shows player_1 has attacked player_2 and received confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "You attacked Sharon"
  end
end
