require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  'Hello world!'
end

get '/secret' do
  'My secret message'
end

get '/reload-test' do
  'Reload is working!'
end

get '/random-cat' do
  @random_name = ["Amigo", "Misty", "Almond"][(rand()*2).to_i]
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  @adorable = params[:adorable]
  erb(:index)
end

