# require 'pg'

feature '#delete' do
  scenario 'can delete a bookmark' do
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit('/bookmarks')
    click_button 'Delete'
    expect(page).not_to have_link('Google', href: 'http://www.google.com')
  end
end
