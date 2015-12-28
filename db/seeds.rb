# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

18.times do
  Product.create(
      title:  "Ring"+Faker::Commerce.product_name ,
      description: Faker::Lorem.paragraphs,
      price: Faker::Commerce.price ,

  )
end
