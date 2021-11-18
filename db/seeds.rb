# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Reservation.destroy_all
Ovni.destroy_all
User.destroy_all

user1 = User.create(first_name: 'Fernando', last_name: 'Alonso', email: 'f.alonso@gmail.com', password: 'azertyuiop')
user2 = User.create(first_name: 'Lewis', last_name: 'Hamilton', email: 'l.hamilton@gmail.com', password: 'qsdfghjklm')
user3 = User.create(first_name: 'Pierre', last_name: 'Gasly', email: 'p.gasly@gmail.com', password: 'poiuytreza')
user4 = User.create(first_name: 'Lando', last_name: 'Norris', email: 'l.norris@gmail.com', password: 'abcdefg')
user5 = User.create(first_name: 'Max', last_name: 'Verstap', email: 'm.verstap@gmail.com', password: '654321')
user6 = User.create(first_name: 'Charles', last_name: 'Leclerc', email: 'c.leclerc@gmail.com', password: '456789')

ovni1 = Ovni.create(name: 'Alpine14', price: 3000, details: 'Soucoupe volante pour 20 personnes. Vitesse max : 28.163 km/h.', city: 'Paris', user: user1)
file = URI.open('https://media.lesechos.com/api/v1/images/view/6114b5a53e45465e286ebf35/1280x720-webp/0611438495565-web-tete.webp')
ovni1.photo.attach(io: file, filename: 'ovni1.png', content_type: 'image/png')

ovni2 = Ovni.create(name: 'Merco44', price: 2500, details: 'Soucoupe volante pour 15 personnes. Vitesse max : 26.113 km/h.', city: 'Marseille', user: user2)
file = URI.open('https://static.actu.fr/uploads/2018/07/DSCN8987-1-1024x768.jpg')
ovni2.photo.attach(io: file, filename: 'ovni2.png', content_type: 'image/png')

ovni3 = Ovni.create(name: 'Alpha10', price: 1200, details: 'Soucoupe volante pour 6 personnes. Vitesse max : 43.110 km/h.', city: 'Toulouse', user: user3)
file = URI.open('https://img.over-blog.com/600x572/2/84/43/77/Bassin-d-Arcachon/soucoupe6.jpg')
ovni3.photo.attach(io: file, filename: 'ovni3.png', content_type: 'image/png')

ovni4 = Ovni.create(name: 'McLar4', price: 800, details: 'Soucoupe volante pour 2 personnes. Vitesse max : 28.509 km/h.', city: 'Paris', user: user4)
file = URI.open('https://file1.telestar.fr/var/telestar/storage/images/media/images/2015/photos/20150408-vires-du-bon-coin/la-soucoupe-de-la-soupe-aux-choux-vendue-sur-ebay/823171-3-fre-FR/La-soucoupe-de-La-soupe-aux-choux-vendue-sur-eBay.jpg?alias=exact1024x768_l&size=x100&format=webp')
ovni4.photo.attach(io: file, filename: 'ovni4.png', content_type: 'image/png')

ovni5 = Ovni.create(name: 'RBull33', price: 1500, details: 'Soucoupe volante pour 8 personnes. Vitesse max : 28.509 km/h.', city: 'Nantes', user: user5)
file = URI.open('https://media.istockphoto.com/photos/unidentified-flying-object-clipping-path-included-picture-id1190295119?k=20&m=1190295119&s=612x612&w=0&h=OUZRvrL4V-QnYUYO2VnDU61DeEUN_y2ZrA9j2Gr4Prk=')
ovni5.photo.attach(io: file, filename: 'ovni5.png', content_type: 'image/png')

ovni6 = Ovni.create(name: 'Ferra16', price: 1600, details: 'Soucoupe volante pour 5 personnes. Vitesse max : 65.901 km/h.', city: 'Lille', user: user6)
file = URI.open('https://media.istockphoto.com/photos/unidentified-flying-object-space-clipping-path-picture-id1186367786?k=20&m=1186367786&s=612x612&w=0&h=F6uHooFq6PGRo9jx6RaM3kYL-0mFKhz9XJqLEVqZSFk=')
ovni6.photo.attach(io: file, filename: 'ovni6.png', content_type: 'image/png')
