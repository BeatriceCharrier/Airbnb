# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
Faker::Config.locale = 'fr'

User.destroy_all
City.destroy_all
Accomodation.destroy_all
Reservation.destroy_all


20.times do
  User.create(email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone, description: Faker::ChuckNorris.fact)
end



10.times do
  City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end


10.times do
  Accomodation.create(available_beds: rand(1..4), price: rand(15..100), description: Faker::Quote.matz, has_wifi: [true, false].sample, welcome_message: Faker::ChuckNorris.fact)
end


5.times do
    Reservation.create(end_date: Faker::Date.forward(days: 30), start_date: Faker::Date.backward(days: 1))
end


