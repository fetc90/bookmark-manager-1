describe '#add' do

   it 'can add a bookmark' do
     Bookmark.add('http://www.bbc.co.uk')
     bookmarks = Bookmark.all
     expect(bookmarks).to include('http://www.bbc.co.uk')
   end

end
