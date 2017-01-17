class Loto
  attr_reader :draw, :players

  def initialize
    @players = []
    @draw =[]
  end

  def self.create_a_grid
    result_game = []
    while result_game.size <= 4
      print "chiffre #{result_game.size + 1} : "
      input_number = gets.to_i
      check_numbers(input_number,result_game)
    end
    result_game
  end

  def self.flash_grid
    result_game = (1..45).to_a.shuffle.take 5
    #result_game = [1,1,1,1,1]
    result_game
  end
  
  def grid_validation grid
    if check_draw
      @players << grid.sort
    else
     return false
    end
  end

  def check_result
    @draw = (1..5).to_a.sample(5).sort
    last_result = true
    @players.to_a.each do |grid|
      if grid == @draw
        last_result = false
      end
      return winner? last_result
    end 
  end

#=====================================
  private
#=====================================

  def check_draw
    @draw.empty?
  end

  def self.check_numbers(input_number,result_game)
    if input_number < 1 || input_number > 45 || result_game.include?(input_number)
    else
      result_game.push(input_number)
    end
  end

  def winner? last_result
    if last_result == false
      return true
    else
      return false
    end
  end

end
