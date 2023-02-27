require_relative '../config/environment'
puts "🌱 Seeding data..."

Product.destroy_all
User.destroy_all
Review.destroy_all


product1= Product.create(name: "pizza")
product2= Product.create(name: "Beef")
product3= Product.create(name: "wheat")
product4= Product.create(name: "maize")
product5= Product.create(name: "rice")

user1 = User.create(name: "Avocado")
user2 = User.create(name: "Mango")
user3 = User.create(name: "Coconut")
user4 = User.create(name: "Beans")
user5 = User.create(name: "orange")


review = Review.create(
  comment: "work work work",
  star_rating: 20,
  product_id: product1.id,
  user_id: user1.id
)



puts "All the seeds are ready"