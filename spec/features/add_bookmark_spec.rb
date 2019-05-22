
feature '#add' do
  scenario 'can add a bookmark' do
    visit ('/bookmarks')
    fill_in('url', with: 'www.imgur.com')
    click_button 'add'
    expect(page).to have_content 'www.imgur.com'
  end
end
