require_relative 'config/environment'

class App < Sinatra::Base


    get '/' do
        erb :index
    end
    
    configure do 
        enable :sessions
        set :sessions_secret, 'bigtasty'
    end

    post '/checkout' do 
        session[:item] = params[:item]
        @session = session
        erb :checkout
      end
end