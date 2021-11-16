# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(first_name: 'Fernando', last_name: 'Alonso', email:'f.alonso@gmail.com', password:'azertyuiop')
user2 = User.create(first_name: 'Lewis', last_name: 'Hamilton', email:'l.hamilton@gmail.com', password:'qsdfghjklm')
user3 = User.create(first_name: 'Pierre', last_name: 'Gasly', email:'p.gasly@gmail.com', password:'poiuytreza')

ovni1 = Ovni.create(name: 'Alpine14', price: 2500, details: 'Soucoupe volante pour 8 personnes', user: user1)
ovni2 = Ovni.create(name: 'Merco44', price: 2000, details: 'Soucoupe volante pour 4 personnes', user: user2)
ovni3 = Ovni.create(name: 'Alpha10', price: 1200, details: 'Soucoupe volante pour 2 personnes', user: user3)
