require 'pg'

class Bookmark
  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id = id
    @title = title
    @url = url
  end

  def self.all

    if ENV['ENVIRONMENT'] == 'test'
      link = PG.connect( dbname: 'bookmark_manager_test' )
    else
      link = PG.connect( dbname: 'bookmark_manager' )
    end

    result = link.exec( "SELECT * FROM bookmarks;" )
    result.map do | bookmark |
      Bookmark.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end
  end

  def self.create(url:, title:)
    # return false unless is_url?(url)
    if ENV['ENVIRONMENT'] == 'test'
      link = PG.connect( dbname: 'bookmark_manager_test' )
    else
      link = PG.connect( dbname: 'bookmark_manager' )
    end
    link.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, url, title")
  end

  def self.delete(id:)
    if ENV['ENVIRONMENT'] == 'test'
      link = PG.connect( dbname: 'bookmark_manager_test' )
    else
      link = PG.connect( dbname: 'bookmark_manager' )
    end
    link.exec("DELETE FROM bookmarks WHERE id = #{id}")
  end

end
