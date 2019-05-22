require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'returns a list of all bookmarks' do
      link = PG.connect(dbname: 'bookmark_manager_test')

      link.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      link.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      link.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end
