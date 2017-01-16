require './loto.rb'

my_loto = Loto.new

draw = my_loto.new_draw
result = my_loto.create_a_grid
my_loto.check_result(draw,result)