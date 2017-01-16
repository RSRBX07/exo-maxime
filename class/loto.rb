class Loto

def new_draw
  number = (1..45).to_a
  number.sample(5).sort
end

def create_a_grid
  result_game = []
  while result_game.size <= 4
    print "jouez un chiffre entre 1 et 45 : "
    input_number = gets.to_i
    if input_number < 1 || input_number > 45
      puts "Jouez un chiffre valide entre 1 et 45."
    elsif result_game.include?(input_number)
      puts "Vous avez déjà joué le #{input_number}, merci de rejouer un autre chiffre."
    else
      result_game.push(input_number)
    end
  end
  puts "Votre bulletin est enregistré : #{result_game.sort!}"
  result_game
end

def check_result draw,result_game
  ticket_control = 5
  last_result = 1

  ticket_control.times {
    if result_game[ticket_control - 1] != draw[ticket_control - 1]
    last_result = 0
    end
    }

  if last_result == 1
    puts "Vous avez gagné !"
  else
    puts "Vous avez perdu."
  end
end

end