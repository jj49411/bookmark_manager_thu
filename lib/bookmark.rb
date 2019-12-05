require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end
    result = connection.exec( "SELECT * FROM bookmarks;" )
    # arr = []
    # result.each do |row|
    #   arr << row['url']
    # end
    # arr
    result.map { |row| row['url'] }
  end

  def self.add(url)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect( dbname: 'bookmark_manager' )
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES ('#{url}')")
    
  end

end
