require 'pg'

def setup_test_database

  p "setting up database...⏳"

  link = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks table
  link.exec("TRUNCATE bookmarks;")

end
