describe Battle do
  it 'shows confirmation message' do
    visit "http://localhost:4567/"
    expect(page).to have_content('Testing infrastructure working!')
  end
end
