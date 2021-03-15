# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'adam', email: 'clock@gmail.com', password: 'test123')
User.create(username: 'brown', email: 'brown@gmail.com', password: 'test123')
User.create(username: 'sam', email: 'sam@gmail.com', password: 'test123')

Category.create(name: 'mobile')
Category.create(name: 'phone')
Category.create(name: 'Laptop')

Project.create(title: 'fan', user_id: 1, category_id: 1)
Project.create(title: 'window', user_id: 2, category_id: 2)
Project.create(title: 'e-commerence', user_id: 2, category_id: 3)
Project.create(title: 'taxi app', user_id: 3, category_id: 2)