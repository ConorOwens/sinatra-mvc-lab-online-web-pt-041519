require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    @text = Oinker.new(params[:input])
    erb :oinked
  end
  
end