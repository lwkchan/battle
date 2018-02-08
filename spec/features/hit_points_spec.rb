feature "hit points" do
  scenario "player 1 can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content("Hannah has #{Player::MAX_HP} HP.")
  end

  scenario "player 2 can see player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content("Josue has #{Player::MAX_HP} HP.")
  end

  scenario 'player 1 can attack player 2' do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content("Josue attacks Hannah")
  end

  scenario "player 2's HP reduces when attacked" do
    sign_in_and_play
    click_button('Attack player 2')
    expect(page).to have_content("Hannah lost 10HP. 90HP remaining")
  end

end
