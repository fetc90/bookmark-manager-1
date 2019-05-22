feature 'bookmark checking' do

  scenario 'checks that the homepage has an option to see the bookmark list' do
    visit '/'
    expect(page). to have_button 'All Bookmarks'
  end

  scenario 'checks that the route /bookmarks allows us to view our bookmarks' do
    link = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    link.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    link.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    link.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit '/'
    click_button 'All Bookmarks'
    expect(page). to have_content 'http://www.google.com'
    expect(page). to have_content 'http://www.makersacademy.com'
    expect(page). to have_content 'http://www.destroyallsoftware.com'
  end
  # run! if app_file == $0
end
