describe "test infrastructure works", type: :feature do

  it "displays 'Testing infrastructure working!" do
    visit "/"
    expect(page).to have_content "Testing infrastructure working!"
  end

end
