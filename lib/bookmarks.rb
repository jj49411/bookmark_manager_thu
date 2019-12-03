require 'pg'

class Bookmarks

  def self.all
    connection = PG.connect( dbname: 'bookmark_manager' )
    result = connection.exec( "SELECT * FROM bookmarks;" )
    arr = []
    result.each do |row|
      arr << row['url']
    end
    arr
    # result.map { |row| row['url'] }

  end

end
