# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# This file should contain all the record creation needed to seed the database with its default values.
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

25.times do
  pokemon_name = Faker::Pokemon.name
  User.create(
    name: pokemon_name,
    email: Faker::Internet.free_email(pokemon_name),
    password: '12341234',
    password_confirmation: '12341234'
  )
end
