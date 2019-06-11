# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: 'Mcfly', bio: "I'm from the future")
Artist.create(name: 'DaftPunk', bio: "I'll put you in the future")
Artist.create(name: 'DJTable', bio: "You'll be floored")
Artist.create(name: 'DJFloor', bio: "No, you'll be floored")

Genre.create(name: 'Reggae')
Genre.create(name: 'Rap')
Genre.create(name: 'Classical')
Genre.create(name: 'Funk')
