describe '#add' do

   it 'can add a bookmark' do
     Bookmark.create('http://www.bbc.co.uk')
     expect(Bookmark.all).to include('http://www.bbc.co.uk')
   end

end
