require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end
  
  get "/square/:number" do
    @user_num = params[:number]
   number = @user_num.to_i
   square = number** 2
   square_string = square.to_s
    square_string
  end 

  get "/say/:number/:phrase" do 
    @user_num = params[:number]
    @user_phrase = params[:phrase]
    number = @user_num.to_i
    repeat = ""
    number.times {repeat += @user_phrase}
    return repeat
    end 
    
    get "/say/:word1/:word2/:word3/:word4/:word5" do 
      @word1 = params[:word1]
      
    end 
  
  
  
end