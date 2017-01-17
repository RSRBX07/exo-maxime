require './lib/Loto.rb'
my_loto = Loto.new
# # draw = my_loto.new_draw
2.times {
  my_loto.grid_validation Loto.create_a_grid
  puts "@players = #{my_loto.players.inspect}"
  puts "@draw    = #{my_loto.draw.inspect}"
}


if my_loto.check_result
  puts "Vous avez gagné"
else
  puts "Vous avez perdu"
end

puts "@players = #{my_loto.players.inspect}"
puts "@draw    = #{my_loto.draw.inspect}"


if my_loto.grid_validation Loto.create_a_grid 
else
  puts "tirage déjà fait, reéssayer un autre jour."
end

puts "@players = #{my_loto.players.inspect}"
puts "@draw    = #{my_loto.draw.inspect}"
