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
    @product = params[:phrase] * params[:number].to_i 
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @store = []
    params.each do |x,k|
      @store << [k]
    end
    @store.flatten.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
  binding.pry  
  end
  
end