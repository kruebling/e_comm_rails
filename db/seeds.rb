Product.destroy_all

#seeding products
1.times do
  Product.create( name: Faker::Beer.unique.name,
                  price: Faker::Number.between(5, 100),
                  image: URI.parse(Faker::LoremPixel.image))
end

p "Created #{Product.count} products"
