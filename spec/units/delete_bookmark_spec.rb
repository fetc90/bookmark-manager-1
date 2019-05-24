require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.delete' do
    it 'deletes the bookmark' do
      bookmark = Bookmark.create(url: 'http://www.google.com', title: 'Google')
      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all.length).to eq 0
    end
  end
end


# describe '#create' do
#
#    it 'can add a bookmark' do
#      bookmark = Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC').first
#      expect(bookmark['url']).to eq 'http://www.bbc.co.uk'
#      expect(bookmark['title']).to eq 'BBC'
#    end
#
# end
