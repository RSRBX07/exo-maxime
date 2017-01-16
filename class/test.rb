require './loto.rb'

my_loto = Loto.new

# draw = my_loto.new_draw
my_loto.grid_validation Loto.create_a_grid * 2



my_loto.check_result
#grids.each {|grid| my_loto.check_result(grid)}
Loto.create_a_grid