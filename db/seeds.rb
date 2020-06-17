# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
love_sushi = { name: "Love Sushi", address: "Praça Olegario Mariano, 4, Lisboa 1170 - 278", category: "japanese" }
madame_gen = { name: "Madame Gen", address: "14 rue des Petites Ecuries, 75010 Paris", category: "french" }
vive_la_frite = { name: "Vive la frite", address: "113 allee des Hospices, Uccle", category: "belgian" }

[ dishoom, pizza_east, love_sushi, madame_gen, vive_la_frite ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"