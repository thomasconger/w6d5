# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



Cat.create!(
  name: "Garfield",
  color: "orange",
  sex: "m",
  birth_date: "2007-11-19" #DateTime.new(2007,11,19,8,37,48,"-06:00")
)

Cat.create!(
  name: "Taco",
  color: "black",
  sex: "m",
  birth_date: "2014-08-19" #DateTime.new(2007,11,19,8,37,48,"-06:00")
)

Cat.create!(
  name: "cheese",
  color: "grey",
  sex: "f",
  birth_date: "2006-12-13" #DateTime.new(2007,11,19,8,37,48,"-06:00")
)
