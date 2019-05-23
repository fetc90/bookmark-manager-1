feature 'bookmark checking' do

  scenario 'checks that the homepage has an option to see the bookmark list' do
    visit '/'
    expect(page). to have_button 'All Bookmarks'
  end

  scenario 'checks that the route /bookmarks allows us to view our bookmarks' do

    # Add the test data
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')

    visit '/'
    click_button 'All Bookmarks'
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software', href: 'http://www.destroyallsoftware.com')
  end
  # run! if app_file == $0
end
