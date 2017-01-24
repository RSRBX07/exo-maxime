# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Game.create([
      { name: 'loto du 01/01/2017',  description: '12.000.000€', players: 28954684, draw: ''},
      { name: 'loto du 02/01/2017',  description: '12.000.000€', players: 28954684, draw: ''},
      { name: 'loto du 03/01/2017',  description: '12.000.000€', players: 28954684, draw: ''},
      { name: 'loto du 04/01/2017',  description: '12.000.000€', players: 28954684, draw: ''},
      { name: 'loto du 05/01/2017',  description: '12.000.000€', players: 28954684, draw: ''},
      { name: 'loto du 06/01/2017',  description: '12.000.000€', players: 28954684, draw: ''}
])