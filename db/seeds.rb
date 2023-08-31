# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create Users
User.create(email: 'john@example.com', password: 'password123')
User.create(email: 'jpaul@example.com', password: 'password123')
User.create(email: 'smith@example.com', password: 'password123')

# category
 Category.create(description: "House Cleaning")
 Category.create(description: "Office")
 Category.create(description: "Construction")
 Category.create(description: "landscaping")

 #services
 Service.create(rate: 50 , user_id:1 , category_id: 1, name: "Regular Cleaning"  , description: "Deep clean your home")
 Service.create(rate: 60 , user_id:2 , category_id: 1, name: "Deep Cleaning" , description: "Weekly Cleaning")
 Service.create(rate: 60 , user_id:2 , category_id: 2, name: "Gardening" , description: "Backyard Frontyard")
 Service.create(rate: 60 , user_id:2 , category_id: 3, name: "Window cleaning" , description: "Clean your office windows")
