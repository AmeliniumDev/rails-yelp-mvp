# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Popolo Shoreditch',
    address:      '26 Rivington St, Hackney, London EC2A 3DU',
    phone_number:  '020 7729 4299',
    category:      'italian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '020 7729 1888',
    category:      'italian'

  },
  {
    name:         'Bull in a China Shop - Bar & Restaurant',
    address:      '196 Shoreditch High St, Hackney, London E1 6LG',
    phone_number:  '020 7539 9299',
    category:      'chinese'

  },
  {
    name:         'Sanjugo London',
    address:      '35 Scrutton St, Hackney, London EC2A 4HU',
    phone_number:  '020 7613 3225',
    category:      'japanese'

  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
# "chinese", "italian", "japanese", "french", "belgian"
