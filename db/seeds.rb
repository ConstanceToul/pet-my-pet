# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all

Pet.create(name: "Busker", title: "Beautiful beast", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_1.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 20, address: "Paris", user_id: User.first.id)
Pet.create(name: "Tom", title: "Timid tomcat", species: "cat", gender: "Male", picture_url: "cats_in_paris/cat_2.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 15, address: "Paris", user_id: User.first.id)
Pet.create(name: "Sally", title: "What a darling", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_3.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 25, address: "Paris", user_id: User.first.id)
Pet.create(name: "Tiger", title: "Gorgeous animal", species: "cat", gender: "Male", picture_url: "cats_in_paris/cat_4.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 28, address: "Paris", user_id: User.first.id)
Pet.create(name: "Lucky", title: "Cuddly and clean", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_5.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 18, address: "Paris", user_id: User.first.id)
Pet.create(name: "Jovie", title: "Super friendly feline", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_8.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 10, address: "Paris", user_id: User.first.id)
Pet.create(name: "Felix", title: "How could you say no", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_7.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 30, address: "Paris", user_id: User.first.id)
Pet.create(name: "Tipsy", title: "Lovable cutiepie", species: "cat", gender: "Male", picture_url: "cats_in_paris/cat_6.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 35, address: "Paris", user_id: User.first.id)
Pet.create(name: "Socky", title: "Snuggle up to this", species: "cat", gender: "Female", picture_url: "cats_in_paris/cat_9.jpg", description: "Friendly cat with lots of energy; unfortunately has a peeing problem", price: 10, address: "Paris", user_id: User.first.id)
