# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Trail.destroy_all

alex = User.create(username: "FonzMP", first_name: "Alex", last_name: "Wilson", email: "fonzmp@gmail.com", password: "password", birthdate: "1986-03-05")


two = Trail.create(name: "22 Day Trail", length: 36.2)

alex.trails << two
alex.save