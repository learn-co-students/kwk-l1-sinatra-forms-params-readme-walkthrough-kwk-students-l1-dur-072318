require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
post '/food' do
  @name=params[:name]
  @favorite_food=params[:favorite_food]
  "My name is #{@name} and I love #{@favorite_food}."
  erb :food
end

get '/compatible' do
  erb :compatible
end

post '/cupid' do
  @name=params[:name]
  @other_name=params[:other_name]
  erb :cupid
end
 

end
