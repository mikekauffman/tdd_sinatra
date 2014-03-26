require 'sinatra/base'
require './lib/item_class'
require './lib/item_list'


ARRAY = ItemsList.new
class App < Sinatra::Application

  get '/' do

    erb :index, :locals => {:display => ARRAY.items_list}
  end

  get '/items/new' do
    erb :new_items
  end

  post '/' do
    ARRAY.create_item(params[:new_item])
    redirect '/'
  end

  get '/items/:id' do
    @item_id = params[:id]
    @showed = ARRAY.show_item(@item_id)
    if @showed.nil?
      status 404
      erb :not_found
    else
      @showed
      erb :item
    end
  end
  get '/items/:id/edit' do
  @item_id = params[:id]
  erb :edit_item
  end

  put '/items/:id' do
    ARRAY.edit_item(params[:edit_item], params[:id].to_i)
    redirect '/'
  end


end