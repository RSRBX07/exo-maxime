require './lib/Loto.rb'
my_loto = Loto.new
# draw = my_loto.new_draw
2.times {
my_loto.grid_validation Loto.create_a_grid

}

if my_loto.check_result
  puts "Vous avez gagné"
else
  puts "Vous avez perdu"
end
#grids.each {|grid| my_loto.check_result(grid)}
if my_loto.grid_validation Loto.create_a_grid 
else
  puts "tirage déjà fait, reéssayer un autre jour."
end
 
# require './french_number.rb'

# puts Number.spell_in_french gets.to_i