# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beatles = Artist.create(name: "Beatles", bio: "They played music")
bad_religion = Artist.create(name: "Bad Religion", bio: "They talk about things")
slayer = Artist.create(name: "Slayer", bio: "They Yell")

rock = Genre.create(name: "Rock")
punk = Genre.create(name: "Punk")
metal = Genre.create(name: "Metal")

help = Song.create(name: "Help", artist_id: 1, genre_id: 1)
big_bang = Song.create(name: "Big Bang", artist_id: 2, genre_id: 1)
you = Song.create(name: "You", artist_id: bad_religion[:id], genre_id: punk[:id])
raining_blood = Song.create(name: "Raining Blood", artist_id: 3, genre_id: 3)
