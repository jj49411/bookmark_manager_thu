require 'sinatra/base'
require './lib/bookmarks'

class Bookmark < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmark_list' do
    @list = Bookmarks.all
    erb :bookmark_list
  end

  run! if app_file == $0

end
