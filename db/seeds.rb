# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all
puts "Creating restaurants......"

restaurants = [
  { name: "Sushi Samba", address: "123 Tokyo St, Japan", phone_number: "123-456-7890", category: "japanese" },
  { name: "Pizza Napoli", address: "456 Rome St, Italy", phone_number: "987-654-3210", category: "italian" },
  { name: "Le Bistro", address: "789 Paris St, France", phone_number: "456-789-0123", category: "french" },
  { name: "Beijing Duck House", address: "101 Beijing St, China", phone_number: "321-654-9870", category: "chinese" },
  { name: "Belgian Waffles", address: "102 Brussels St, Belgium", phone_number: "654-321-0987", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "Restaurants installed!"
