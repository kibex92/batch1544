require 'faker'

Restaurant.destroy_all

15.times do 
  restaurant = Restaurant.new(
    name: Faker::TvShows::Friends.character,
    address: Faker::TvShows::Friends.location,
    rating: rand(1..5)
  )
  restaurant.save!
end
