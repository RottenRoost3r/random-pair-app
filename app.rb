require 'sinatra'
require_relative 'random_pair.rb'

enable :sessions

get '/' do
  name = session[:name]
  result = session[:result] || ""
  erb :random_pair, locals:{result: result, name: name}
end

post '/pairs' do
  name = params[:name] || []
  result = pairing(name)
  session[:result] = result
  redirect '/'
end

