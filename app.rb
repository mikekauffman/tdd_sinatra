require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/items/new' do
    erb :index
  end

end