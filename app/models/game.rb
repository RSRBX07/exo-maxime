class Game < ApplicationRecord
  #@players = Games.find(:all, :limit => params[:players])

  def players
    #@players
    @players ||= 0
  end
  
  def add_player
    @players += 1  
  end

  def del_player
    raise RuntimeError.new "no more player to be removed" if @players <= 0
    @players -= 1
  end

private

end
