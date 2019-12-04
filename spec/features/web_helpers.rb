require 'pg'

def truncate_bookmarks
  connection = PG.connect(dbname: 'bookmark_manager_test')
  TRUNCATE TABLE bookmarks;
end