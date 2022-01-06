# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  Kitchencar.create(name: "#{n}人目", introduction: "#{n}人目だよ",
                    location: "#{n}にいる", email: "#{n}@example.com",
                    password: "password", password_confirmation: "password")
end

kitchencars = Kitchencar.order(:created_at).take(3)