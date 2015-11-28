# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
teams = Team.create([
  {team_id: 1, shortname: "bc", name: "BC Lions"},
  {team_id: 2, shortname: "cgy", name: "Calgary Stampeders"},
  {team_id: 3, shortname: "edm", name: "Edmonton Eskimos"},
  {team_id: 4, shortname: "ssk", name: "Saskatchewan Roughriders"},
  {team_id: 5, shortname: "wpg", name: "Winnipeg Blue Bombers"},
  {team_id: 6, shortname: "ham", name: "Hamilton Tiger-Cats"},
  {team_id: 7, shortname: "tor", name: "Toronto Argonauts"},
  {team_id: 9, shortname: "mtl", name: "Montreal Alouettes"},
  {team_id: 65, shortname: "ott", name: "Ottawa Redblacks"}
])
