describe "Players can enter names", type: :feature do

  it "Players can enter names and see them displayed" do
    sign_in_and_play
    expect(page).to have_content "Hello Stuart and Sharon!"
  end

end
