# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy the database
Booking.destroy_all
Service.destroy_all
Category.destroy_all
User.destroy_all


# Create Users
user1 = User.create(email: 'john@example.com', password: 'password123')
user2 = User.create(email: 'jpaul@example.com', password: 'password123')
user3 = User.create(email: 'smith@example.com', password: 'password123')

# category
 category1 = Category.create(description: "House Cleaning")
 category2 = Category.create(description: "Office")
 category3 = Category.create(description: "Construction")
 category4 = Category.create(description: "landscaping")

 #services
 Service.create(rate: 1500 , user: user1 , category: category1, name: "Regular Cleaning"  , description: "Deep clean your home")
 Service.create(rate: 2000 , user: user1, category: category1, name: "Deep Cleaning" , description: "Weekly Cleaning")
 Service.create(rate: 1500 , user: user1, category: category1, name: "Gardening" , description: "Backyard Frontyard")
 Service.create(rate: 7000 , user: user1, category: category2, name: "Window cleaning" , description: "Clean your office windows")
 Service.create(rate: 7000, user: user1, category: category2, name: "Office Floor cleaning" , description: "Professional office floors cleaning")
 Service.create(rate: 10000, user: user1, category: category3, name: "Post Construction cleaning" , description: "Professional office floors cleaning")
 Service.create(rate: 20000 , user: user1, category: category4, name: "Landscaping" , description: "Revive your surroundings with our professional landscaping services")
