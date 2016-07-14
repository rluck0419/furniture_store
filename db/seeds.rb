# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  category = Category.create!(category_name: Faker::Commerce.department(1,true))
  4.times do
    Product.create!(
      name: Faker::Commerce.product_name,
      price: Faker::Commerce.price.round * 9000,
      picture: Faker::Avatar.image,
      condition: ['good', 'average', 'mint'].sample,
      on_clearance: [true, false].sample,
      quantity: rand(1..10),
      category_id: category.id
    )
  end
end
