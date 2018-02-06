feature 'players can enter their names on the screen' do
  scenario 'inputted names are displayed' do
    visit('/')
    fill_in 'player_1', with: 'Josue'
    fill_in 'player_2', with: 'Hannah'
    click_button('Submit')
    expect(page).to have_content("Josue vs. Hannah")
  end
end
