
feature '#add' do
  scenario 'can add a bookmark' do
    visit ('/bookmarks')
    fill_in('url', with: 'www.imgur.com')
    fill_in('title', with: 'Imgur')
    click_button 'add'
    expect(page).to have_content 'Imgur'
  end
end
