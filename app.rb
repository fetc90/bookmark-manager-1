require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/hello_world' do
    erb :hello_world
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb :bookmarks
  end

  post '/add' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

end
