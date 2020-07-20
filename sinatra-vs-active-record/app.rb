require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all.order(created_at: :desc)
  # Embedded RuBy
  erb :index
end

get '/restaurants/:id' do
  # The ID goes to the params
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end

post '/restaurants' do
  # Data from the form goes to the params
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new(name: name, city: city)
  restaurant.save
  redirect '/'
end
