# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

admin=User.create!(name: "tadesse alemayehu", email: 'admin@gmail.com', password: '123456')
user_one=User.create!(name: "tadesse alemayehu", email: 'user@gmail.com', password: '123456')

admin_category_one=Category.create!(user: admin, name: 'MC donald', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')
admin_category_three=Category.create!(user: admin, name: 'Bety shiro', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')
admin_category_two=Category.create!(user: admin, name: 'Tomocka', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')


category_one=Category.create!(user: user_one, name: 'MC donald', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')
category_two=Category.create!(user: user_one, name: 'Tomocka', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')
category_three=Category.create!(user: user_one, name: 'Bety shiro', icon: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqx04Z9VivrrDcYmP3D3TygffvlxLwPKKzAw&usqp=CAU')

spend_one=Spend.create!(name: 'spend by user one 1', user: user_one, amount: 100)
CategorySpend.create!(spend: spend_one, category: category_one)
spend_two=Spend.create!(name: 'spend by user one 2', user: user_one, amount: 270)
CategorySpend.create!(spend: spend_two, category: category_one)
CategorySpend.create!(spend: spend_two, category: category_two)
spend_three=Spend.create!(name: 'spend by admin 1', user: admin, amount: 320)
CategorySpend.create!(spend: spend_three, category: admin_category_one)
CategorySpend.create!(spend: spend_three, category: admin_category_two)
CategorySpend.create!(spend: spend_three, category: admin_category_three)
spend_three=Spend.create!(name: 'spend by admin 2', user: admin, amount: 150)
CategorySpend.create!(spend: spend_three, category: admin_category_one)
