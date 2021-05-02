# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
Origin.destroy_all

domestic = Origin.create(name: 'Domestic')
import = Origin.create(name: 'Import')

Car.create([
  {make: 'Honda', model: 'CR-V', year: '2014', miles: 96000, origin: import},
  {make: 'Honda', model: 'Civic', year: '2003', miles: 222000, origin: import},
  {make: 'Chevy', model: 'Suburban', year: '2007', miles: 150000, origin: domestic},
  {make: 'Ford', model: 'Mustang', year: '1986', miles: 140000, origin: domestic},
  {make: 'Audi', model: 'TT', year: '2000', miles: 78000, origin: import},
  {make: 'VW', model: 'Passat', year: '2000', miles: 125000, origin: import},
  {make: 'Jeep', model: 'Laredo', year: '2005', miles: 75000, origin: domestic}
])