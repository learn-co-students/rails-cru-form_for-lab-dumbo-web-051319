# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create(name: "Gemma", bio: "I do what I want")
Artist.create(name: "Sarah", bio: "I love my phone")
Artist.create(name: "Malik", bio: "Hullo")
Artist.create(name: "Drew", bio: "goodbye")

Genre.create(name: "pop")
Genre.create(name: "smooth jazz")


Song.create(name: "Yeah", artist_id: 1, genre_id: 1)
Song.create(name: "No", artist_id: 2, genre_id: 2)
Song.create(name: "Maybe", artist_id: 3, genre_id: 1)
Song.create(name: "Uh-huh", artist_id: 4, genre_id: 2)