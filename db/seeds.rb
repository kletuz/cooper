# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
place = Place.create!(name: "Sur", age: 10, population: 20)
place.users.create!(depto: "house", condo: "manager", password: "deepHouse",
             password_confirmation: "deepHouse", admin: true)
