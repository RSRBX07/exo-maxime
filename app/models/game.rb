class Game < ApplicationRecord
  #@players = Games.find(:all, :limit => params[:players])


  
  def add_player
    @players += 1  
  end

  def del_player
    raise RuntimeError.new "no more player to be removed" if @players <= 0
    @players -= 1
  end

  def draw_t
    grid = "1234567890"
    name_rar_file = ""

    4.times {
      rd = rand(grid.size)
      name_rar_file = name_rar_file << grid[rd]
    }
    return name_rar_file
  end
  #edit_game_path(@game.draw,'[1,2,3,4]')

private

end
