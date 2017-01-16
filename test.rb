require './lib/Loto.rb'
my_loto = Loto.new
# draw = my_loto.new_draw
2.times {
my_loto.grid_validation Loto.create_a_grid
}
my_loto.check_result
#grids.each {|grid| my_loto.check_result(grid)}
my_loto.grid_validation Loto.create_a_grid
# require './french_number.rb'

# puts Number.spell_in_french gets.to_i