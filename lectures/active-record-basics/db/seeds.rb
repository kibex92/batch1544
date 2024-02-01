require 'faker'
Restaurant.destroy_all

100.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::TvShows::Simpsons.location
  )
  restaurant.save!
end