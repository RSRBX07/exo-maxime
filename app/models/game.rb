class Game < ApplicationRecord

  def add_player
    @players += 1  
  end

  def del_player
    raise RuntimeError.new "no more player to be removed" if @players <= 0
    @players -= 1
  end

  def new_draw
    if self.draw.size == 0 
      grid = "1234567890"
      new_grid = ""
      5.times {
        roll = rand(grid.size)
        new_grid = new_grid << grid[roll]
      }
      self.draw=new_grid.split(//).to_s
      self.save
      self.draw
    else 
      self.draw
    end 
  end
end
