require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

post "/restaurants" do
  name = params[:name]
  address = params[:address]
  rating = params[:rating]

  restaurant = Restaurant.new(
    name: name,
    address: address,
    rating: rating
  )
  restaurant.save
  redirect "/"
end