# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'juke', movie: movies.first)
#
Player.destroy_all
Team.destroy_all

broncos = Team.create(
  name: "Broncos",
  city: "Denver"
)
seahawks = Team.create(
  name: "Seahawks",
  city: "Seattle"
)

Player.create(
  first_name: "Von",
  last_name: "Miller",
  position: "OLB",
  team: broncos
)
Player.create(
  first_name: "Chris",
  last_name: "Harris Jr",
  position: "Cornerback",
  team: broncos
)
Player.create(
  first_name: "Russell",
  last_name: "Wilson",
  position: "Quarterback",
  team: seahawks
)
