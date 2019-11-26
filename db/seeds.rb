# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
15.times do
    Artist.create(name: Faker::Music.band)
end 

50.times do 
    artist = Artist.all.sample
    Song.create(title: Faker::Music::Phish.song, artist_id: artist.id)
end 