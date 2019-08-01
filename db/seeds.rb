# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # All of Artists
drake = Artist.create(name:"Drake",bio:"6 god")
whitney_houston= Artist.create(name:"Whitney Houston",bio:"The voice")
tupac= Artist.create(name:"Tupac",bio:"G.O.A.T")
kenton= Artist.create(name:"Kenton",bio:"King")
niki_minaj= Artist.create(name:"Niki",bio:"Barbie")
james_brown= Artist.create(name:"James Brown",bio:"God father of Soul")
lil_nas_x= Artist.create(name:"Lil Nas X",bio:"New Kid on the Block")


#All Genres
rap = Genre.create(name:"Rap")
pop = Genre.create(name:"Pop")
# funk = Genre.create(name:"Funk")
soul = Genre.create(name:"Soul")
country = Genre.create(name:"Country")
r_b = Genre.create(name:"R&B")

#All songs
nice_for_what = Song.create(name:"Nice for what",artist_id:drake.id,genre_id:rap.id)
dance_with_somebody = Song.create(name:"Dance With Somebody",artist_id:whitney_houston.id,genre_id:r_b.id)
old_town_road = Song.create(name:"Old town road",artist_id:lil_nas_x.id,genre_id:country.id)
get_up = Song.create(name:"Get up",artist_id:james_brown.id,genre_id:soul.id)
barbie_tingz = Song.create(name:"Barbie Tingz",artist_id:niki_minaj.id,genre_id:rap.id)
ambition_of_ridah = Song.create(name:"Ambition of Ridah",artist_id:tupac.id,genre_id:rap.id)
rails_on_rails = Song.create(name:"Rails on Rails",artist_id:kenton.id,genre_id:pop.id)
