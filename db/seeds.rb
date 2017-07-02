# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all

50.times do |index|
  product = Product.create!(name: Faker::Commerce.product_name,
                            image: Faker::Placeholdit.image ,
                            cost: Faker::Commerce.price,
                            description: Faker::Commerce.department,
                            rating: Faker::Number.between(1, 5),
                            country_origin: Faker::Address.country)
  # 5.times do |index|
  #   product.reviews.create!(author: Faker::Name.unique.name,
  #                           content: Faker::HitchhikersGuideToTheGalaxy.quote,
  #                           rating: Faker::Number.between(1, 5))
  # end
end


p "Created #{Product.count} products"
# p "Created #{Review.count} reviews"
