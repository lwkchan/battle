feature "players can see the other player's hit points" do

  scenario "player 1 can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Hannah has #{Battle::MAX_HP} HP.")
  end

  scenario "player 2 can see player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content("Josue has #{Battle::MAX_HP} HP.")
  end
end
