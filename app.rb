require_relative 'config/environment'

class App < Sinatra::Base

  get '/name_form' do
    erb :name_form
  end

  # Add your post route and action below
  post '/newname' do
    @your_first_name=params[:your_first_name]
    @celebrity_crush_last_name=params[:celebrity_crush_last_name]
    erb :name
  end
end
