# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

flylo = Artist.create(name: "Flying Lotus", bio: "Flylo Bio")
roots = Artist.create(name: "The Roots", bio: "Roots Bio")
dilla = Artist.create(name: "J Dilla", bio: "Dilla bio")

rap = Genre.create(name: "Rap")
hiphop = Genre.create(name: "Hip Hop")
instrumental = Genre.create(name: "Instrumental")

Song.create(name: "This Song", artist_id: flylo.id, genre_id: instrumental.id)
Song.create(name: "That Song", artist_id: roots.id, genre_id: rap.id)
Song.create(name: "Anotha One", artist_id: dilla.id, genre_id: hiphop.id)
