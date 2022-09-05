# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin=User.create!(name: "tadesse alemayehu", email: 'admin@gmail.com', password: '123456')
user_one=User.create!(name: "tadesse alemayehu", email: 'user@gmail.com', password: '123456')

spend_one=Spend.create!(name: 'spend by user one', user: user_one, amount: 200)
category_one=Category.create!(user: user_one, name: 'MC donald')
CategorySpend.create!(spend: spend_one, category: category_one)
