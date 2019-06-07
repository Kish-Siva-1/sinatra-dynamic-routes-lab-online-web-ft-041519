require_relative 'config/environment'

class App < Sinatra::Base
  post '/reversename/:name' do 
    params[:name].reverse
  end 

end