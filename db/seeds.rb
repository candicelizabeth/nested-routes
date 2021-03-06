# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 b = Brand.create(name: 'Nike', year_founded: 1952)
Shoe.create([{brand: b, condition: 'a little worn in', price: 55.99, color: 'forest green'},
{brand: b, condition: 'brand new', price: 99.00, color: 'hot pink'},
{brand: b, condition: 'very old', price: 45.99, color: 'neon orange'}])