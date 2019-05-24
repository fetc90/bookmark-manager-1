describe '#create' do

   it 'can add a bookmark' do
     bookmark = Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC').first
     expect(bookmark['url']).to eq 'http://www.bbc.co.uk'
     expect(bookmark['title']).to eq 'BBC'
   end

end
