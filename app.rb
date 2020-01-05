require_relative 'config/environment'

class App < Sinatra::Base
 
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/'
    erb :index
  end
  
  post "/checkout"
    @sessions = session
    item = params["item"]
    @sessions[:item] = item
  end
  
end