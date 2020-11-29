# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
User.destroy_all

user_1 = User.create!(email: 'user1@airbnb.com', password: 'password')
user_2 = User.create!(email: 'user2@airbnb.com', password: 'password')

flat_1 = Flat.create!(
  name: "My first flat",
  price: 250,
  description: "This is the description of the flat I'm creating now, it should be a bit long but not that much. So make sure that you write something that makes sense.",
  user: user_1
  )

flat_2 = Flat.create!(
  name: "My second flat",
  price: 175,
  description: "This is the description of the flat I'm creating now, it should be a bit long but not that much. So make sure that you write something that makes sense.",
  user: user_2
  )
