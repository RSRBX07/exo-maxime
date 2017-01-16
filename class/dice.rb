#maxime
class Dice
  def roll (cheat = nil) 
    return cheat if cheat 
    dice = [1,2,3,4,5,6]
    dice.sample
  end
end
