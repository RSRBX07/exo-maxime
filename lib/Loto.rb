class Loto

  def check_draw
    @draw ? false : true
  end

  def self.create_a_grid
    result_game = []
    while result_game.size <= 4
      print "chiffre #{result_game.size + 1} : "
      input_number = gets.to_i
      check_numbers input_number,result_game
    end
    result_game
  end

  def self.check_numbers(input_number,result_game)
    if input_number < 1 || input_number > 45 || result_game.include?(input_number)
    else
      result_game.push(input_number)
    end
  end

  def grid_validation grid
    if check_draw
      @palyers ||= []
      @palyers << grid.sort 
    else
      return false
    end
  end

  def check_result
    @draw = @draw || (1..5).to_a.sample(5).sort
    last_result = true
    @palyers.to_a.each do |grid|
      if grid == @draw
        last_result = false
      end
      return winner? last_result
    end 
  end

  def winner? last_result
    if last_result == true
      return true
    else
      return false
    end
  end
end