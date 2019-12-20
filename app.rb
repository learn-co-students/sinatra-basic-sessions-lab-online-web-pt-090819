require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "44183Ad5!!"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @sessions = session
    item = params[:item]
    @sessions[:item] = item
    erb :checkout
  end
end
