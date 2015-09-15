require './config/environment'

class ApplicationController < Sinatra::Base

  configure do 
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/play' do
    number = Random.rand(1...3)
    if number == 1
      @phrase = "You win!"
      erb :results
    else
      @phrase = "You die :("
      erb :results
    end
  end
end