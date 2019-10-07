# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Johhny Appleseed", email: "johnnyappleseed@test.com", password: "test123")
User.create(name: "Jane Appleseed", email: "janeappleseed@test.com", password: "test789")

Quote.create(content: "The way to get started is to quit talking and begin doing.", author: "Walt Disney")
Quote.create(content: "Whoever is happy will make others happy too.", author: "Anne Frank")