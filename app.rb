require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
enable :sessions, :method_override


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

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

end
