require 'sinatra/base'

class App < Sinatra::Base

  ITEMS_LIST = []
  get '/' do
    erb :index
  end

  get '/items/new' do
    erb :new_items
  end

  post '/' do
   ITEMS_LIST << params[:new_item]
    erb :index
  end

end