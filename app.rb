require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/hello_world' do
      erb :hello_world
  end
end
