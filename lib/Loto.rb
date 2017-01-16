class Loto

  def check_draw
    @draw ? false : true
  end

  def self.create_a_grid
      result_game = []
      while result_game.size <= 4
        print "jouez un chiffre entre 1 et 45 : "
        input_number = gets.to_i
        check_numbers input_number,result_game
      end
      result_game
  end

  def self.check_numbers(input_number,result_game)
    if input_number < 1 || input_number > 45
      puts "Jouez un chiffre valide entre 1 et 45."
    elsif result_game.include?(input_number)
      puts "Vous avez déjà joué le #{input_number}, merci de rejouer un autre chiffre."
    else
      result_game.push(input_number)
    end
  end

  def grid_validation grid
    if check_draw
      @palyers ||= []
      @palyers << grid 
    else
      puts "Le tirage a déjà été effectué."
    end
  end

  def check_result
    @draw = @draw || (1..45).to_a.sample(5).sort
    ticket_control = 5
    last_result = 1


    @palyers.to_a.each do |grid|
      ticket_control = grid.size
      ticket_control.times {
      if grid[ticket_control - 1] != @draw[ticket_control - 1]
        last_result = 0
      end
      }
      winner? last_result
    end 
  end

  def winner? last_result
    if last_result == 1
      puts "Vous avez gagné !"
    else
      puts "Vous avez perdu."
    end
  end
end
