puts "Destroying previous information from database"

Booking.destroy_all
Flat.destroy_all
User.destroy_all

puts "Creating users"
user_1 = User.create!(email: 'user1@airbnb.com', password: 'password')
user_2 = User.create!(email: 'user2@airbnb.com', password: 'password')
puts "Users created"


puts "Creating flats"
flat_1 = Flat.create!(
  name: "My first flat",
  price: 250,
  description: "This is the description of the flat I'm creating now, it should be a bit long but not that much. So make sure that you write something that makes sense.",
  user: user_1,
  address: "C/ del Telègraf, 54, Barcelona"
  )

flat_2 = Flat.create!(
  name: "My second flat",
  price: 175,
  description: "This is the description of the flat I'm creating now, it should be a bit long but not that much. So make sure that you write something that makes sense.",
  user: user_2,
  address: "Carrer de Brussel, 43 Barcelona"
  )
puts "Flats created"

puts "All done, you are good to go!"
