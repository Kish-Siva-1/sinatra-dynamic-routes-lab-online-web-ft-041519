require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get "/square/:number" do
    @number = params[:number].to_i**2
    "#{@number}"
  end
  
  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    params[:number].times do 
      "#{@phrase}"
    end 
  end

end