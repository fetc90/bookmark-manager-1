feature 'bookmark checking' do

  scenario 'checks that the homepage has an option to see the bookmark list' do
    visit '/'
    expect(page). to have_button 'All Bookmarks'
  end

  scenario 'checks that the route /bookmarks allows us to view our bookmarks' do
    visit '/'
    click_button 'All Bookmarks'
    expect(page). to have_content 'https://www.google.co.uk'
    expect(page). to have_content 'https://makers.tech'
  end
  # run! if app_file == $0
end