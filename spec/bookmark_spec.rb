require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new } 

  describe '#all' do
    it 'returns a list of all bookmarks' do
      expect(bookmark.all).to eq(['https://www.google.co.uk', 'https://makers.tech'])
    end
  end
end
