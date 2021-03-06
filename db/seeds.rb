# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
Review.destroy_all


50.times do |index|
  product = Product.create!(name: Faker::Construction.material, cost: Faker::Number.decimal(l_digits: 2, r_digits: 2), country_of_origin: Faker::Address.country_code)
end

p "Created #{Product.count} products"

250.times do |index|
  Review.create!(author: Faker::Artist.name, content_body: Faker::Lorem.characters(number: 86), rating: Faker::Number.between(from: 1, to: 5), product_id: Product.random.id)
end

p "Created #{Review.count} reviews"
