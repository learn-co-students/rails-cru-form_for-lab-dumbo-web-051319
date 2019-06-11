# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Artist.destroy_all
# Genre.destroy_all
#
6.times do
  Artist.create(name: Faker::Artist.name, bio: Faker::Hipster.sentence)
end

3.times do
  Genre.create(
    name: Faker::Hipster.word
  )
end

# Songs #
Song.create(name: "happy", artist_id: 7, genre_id: 1)
Song.create(name: "sad", artist_id: 8, genre_id: 2)
Song.create(name: "angry", artist_id: 9, genre_id: 3)
Song.create(name: "depressed", artist_id: 10, genre_id: 1)
Song.create(name: "nervous", artist_id: 11, genre_id: 2)
Song.create(name: "calm", artist_id: 12, genre_id: 1)
Song.create(name: "love", artist_id: 11, genre_id: 3)
Song.create(name: "pannick", artist_id: 11, genre_id: 3)
puts "Success!"
