require 'sinatra/base'
require './lib/item_class'
require './lib/item_list'

ARRAY = ItemsList.new

class App < Sinatra::Base

  get '/' do
    @display_list = ARRAY.items_list
    erb :index
  end

  get '/items/new' do
    erb :new_items
  end

  post '/' do
    @display_list = ARRAY.create_item(params[:new_item])
    redirect '/'
  end

  get '/single_item' do
    erb :item
  end


end