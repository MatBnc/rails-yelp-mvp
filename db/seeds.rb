# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
surpriz = {name: 'Surpriz', address: '110 rue Oberkampf', phone_number: '0156985347', category:'french'}
dumplingeuh = {name: 'Dumplingeuh', address: '108 rue Oberkampf', phone_number: '0143957681', category:'chinese'}
mamma_mia = {name: 'Mamma mia', address: '92 rue Oberkampf', phone_number: '0128917634', category:'italian'}
sushi_town = {name: 'Sushi town', address: '80 rue Oberkampf', phone_number: '0146957200', category:'japanese'}
frites_mamen = {name: 'Frites mamen', address: '120 rue Oberkampf', phone_number: '0119734682', category:'belgian'}

[surpriz, dumplingeuh, mamma_mia, sushi_town, frites_mamen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
