require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    #binding.pry
    dog = Puppy.new(params[:name],params[:breed], params[:age])
    @breed = dog.breed
    @name = dog.name
    @age = dog.age
    erb :display_puppy
  end
end
