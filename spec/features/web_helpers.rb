def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Josue'
  fill_in 'player_2', with: 'Hannah'
  click_button('Submit')
end
