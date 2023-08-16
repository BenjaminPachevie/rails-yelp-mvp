# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
surpriz = { name: 'Surpriz', address: '7 Boundary St, London', phone_number: '0145811798', category: 'french' }
pny = { name: 'PNY', address: '56A Shoreditch High St, London', phone_number: '0145823798', category: 'chinese' }
mama_roma = { name: 'Mama Roma', address: '18 Italy St, London', phone_number: '0119823798', category: 'italian' }
kinoko = { name: 'Kinoko', address: '23 Osaka St, London', phone_number: '0145822298', category: 'japanese' }
baraque_frite = { name: 'La Baraque a frite', address: '97 Belgian St, London ', phone_number: '0147423798',
                  category: 'belgian' }

[surpriz, pny, mama_roma, kinoko, baraque_frite].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
