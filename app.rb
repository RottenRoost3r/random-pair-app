require 'sinatra'
require_relative 'random_pair.rb'

enable :sessions

get '/' do
  name = session[:name]
  result = session[:result] || ""
  p "FIRST PAGE PARAMS IS #{params}"
  erb :random_pair, locals:{result: result, name: name}
end

post '/pairs' do
  name = params[:name] || []
  result = pairing(name)
  p "HEY RIGHT HERE #{params}"
  session[:result] = result
  redirect '/'
  erb :pairs, locals:{result: result, name: name}
end

