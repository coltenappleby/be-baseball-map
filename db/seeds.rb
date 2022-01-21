# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create(name: 'Boston', state: 'MA', country: 'US')
Stadium.create(address: '34 Big Papi Way', 
    latitude: '42°20′46.5″N', 
    longitude: ' 71°5′51.9″W', 
    city: City.first, 
    year_built: 1912, 
    wikipedia: 'https://en.wikipedia.org/wiki/Fenway_Park')
StadiumName.create(stadium: Stadium.first, name: 'Fenway Park')
Team.create(name: "Boston Red Sox")
TeamCity.create(city: City.first, team: Team.first)
StadiumTeam.create(stadium: Stadium.first, team: Team.first)
