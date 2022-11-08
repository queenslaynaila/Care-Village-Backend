puts "🌱 Seeding data..."
Category (Baby sitter, Pet care Provider, Care companion, House keeper)
# place your seeds here
# create categories
Category.create(name: "Baby Sitter")
Category.create(name: "Pet care Provider")
Category.create(name: "Care companion")
Category.create(name: "House keeper")
Category.create(name: "Special needs")
puts "🌱 Done seeding!"
