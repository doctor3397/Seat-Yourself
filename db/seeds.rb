# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all

Restaurant.create!(
  name: "Canyon Creek",
  city: "Richmond Hill",
  capcity: "18",
  cuisine: "Steakhouse",
  image: "steak.jpg"
)

Restaurant.create!(
  name: "The Chase",
  city: "Queen West",
  capcity: "24",
  cuisine: "American",
  image: "hamburger.jpg"
)

Restaurant.create!(
  name: "Campagnolo",
  city: "The Beaches",
  capcity: "30",
  cuisine: "Italian",
  image: "pasta.jpg"
)

Restaurant.create!(
  name: "Mamakas",
  city: "Etobicoke",
  capcity: "33",
  cuisine: "Greek",
  image: "hummus.jpg"
)

Restaurant.create!(
  name: "Earth to Table",
  city: "North York",
  capcity: "14",
  cuisine: "Pizzeria",
  image: "pizza.jpg"
)

Restaurant.create!(
  name: "Cafe Boulud",
  city: "The Annex",
  capcity: "14",
  cuisine: "French",
  image: "risotto.jpg"
)

Restaurant.create!(
  name: "Miku Izakaya",
  city: "The Annex",
  capcity: "14",
  cuisine: "Japanese",
  image: "niku.jpg"
)

Restaurant.create!(
  name: "Lee Chen Asian Bitro",
  city: "King West",
  capcity: "14",
  cuisine: "Chinese",
  image: "chinese.jpg"
)
