require 'pg'

class Bookmark

BOOKMARK_LIST = ['https://www.google.co.uk', 'https://makers.tech']

  def self.all

    if ENV['ENVIRONMENT'] == 'test'
      link = PG.connect( dbname: 'bookmark_manager_test' )
    else
      link = PG.connect( dbname: 'bookmark_manager' )
    end

    result = link.exec( "SELECT * FROM bookmarks;" )
    result.map do | bookmark | bookmark['url'] end
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
      link = PG.connect( dbname: 'bookmark_manager_test' )
    else
      link = PG.connect( dbname: 'bookmark_manager' )
    end
    result = link.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
    result
  end

end
