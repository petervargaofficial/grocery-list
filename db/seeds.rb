# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


groceries = Grocery.create([
  {item: "Apples", quantity: 5, price: 10 , description: "Pink Lady"},

  {item: "Pickles", quantity: 1, price: 2 , description: "1 jar is enough!"},

  {item: "Spinach", quantity: 1, price: 1 , description: "fresh only!"}

   ])