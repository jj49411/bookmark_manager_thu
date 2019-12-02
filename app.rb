require 'sinatra/base'

class Bookmark < Sinatra::Base

  get '/' do
    "Bookmarks"
  end

  run! if app_file == $0

end