require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do
   phrase = params[:user_phrase]
   @pig_latin = PigLatinizer.new.piglatinize(phrase)

   "#{@pig_latin}"

  end
    

end