     
require 'sinatra'
require 'httparty'
require 'dotenv/load'

get '/' do
  HTTParty.get("http://omdbapi.com?apikey=#{ENV['OMDB_API_KEY']}&t=jaws")
  
  erb :index
end





