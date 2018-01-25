require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/create_puppy' do
    erb :create_puppy
  end

  post '/display_puppy' do
    dog = Dog.new(params[:name],params[:breed], params[:age])
    @breed = dog.breed
    @name = dog.name
    @age = dog.age
    erb :display_puppy
end
