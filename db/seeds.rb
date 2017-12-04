Product.destroy_all

#seeding products
50.times do
  Product.create( name: Faker::Beer.unique.name,
                  price: Faker::Number.between(5, 100))
end

p "Created #{Product.count} products"
