require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get "/square/:number" do
    binding.pry
    @number = params[:number]**2
    #"#{@user_name}"
  end

end