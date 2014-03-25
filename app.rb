require 'sinatra/base'
require './lib/item_class'
require './lib/item_list'

class App < Sinatra::Base

  set :array, ItemsList.new

  get '/' do
    erb :index
  end

  get '/items/new' do
    erb :new_items
  end

  post '/' do
    @new_item = params[:new_item]
    erb :index
  end

  get '/single_item' do
    erb :item
  end

end