# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroy"
Flat.destroy_all

puts "created"

10.times do |number|
   Flat.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    picture_url: "https://source.unsplash.com/1600x900/?flats",
    description: Faker::Lorem.sentence(word_count: 20),
    price_per_night: rand(20..200),
    number_of_guests: rand(1..8)
  )
end
