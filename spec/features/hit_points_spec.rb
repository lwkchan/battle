feature "players can see the other player's hit points" do

  before(:each) do
    visit('/')
    fill_in 'player_1', with: 'Josue'
    fill_in 'player_2', with: 'Hannah'
    click_button('Submit')
  end

  scenario "player 1 can see player 2's hit points" do
    expect(page).to have_content("Hannah has #{Battle::MAX_HP} HP.")
  end

  scenario "player 2 can see player 1's hit points" do
    expect(page).to have_content("Josue has #{Battle::MAX_HP} HP.")
  end
end




# feature 'players can enter their names on the screen' do
#   scenario 'inputted names are displayed' do
#     visit('/')
#     fill_in 'player_1', with: 'Josue'
#     fill_in 'player_2', with: 'Hannah'
#     click_button('Submit')
#   end
# end
