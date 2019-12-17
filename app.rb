require_relative 'config/environment'

class App < Sinatra::Base
 configure do
   enable: session
   set :session_secret, "enigma"
 end
 
 get '/' do
   erb :index
 end
 
 post '/checkout' do
   params[:data].each do |item|
     @session << item
   end
   erb :checkout
 end
end