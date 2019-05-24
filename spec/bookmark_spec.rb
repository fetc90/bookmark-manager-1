require 'bookmark'


describe Bookmark do

  describe '#all' do
    it 'returns a list of all bookmarks' do

      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')
      Bookmark.create(url: 'http://www.google.com', title: 'Google')

      bookmarks = Bookmark.all

      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.last.title).to eq 'Google'
    end
  end
end
