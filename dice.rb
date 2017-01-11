#maxime
def roll (cheat = nil)
  if cheat
    dice = [cheat]
  else
    dice = [1,2,3,4,5,6]
  end
    nbr = dice.size
    result = rand nbr
    dice[result]
end

puts roll

puts roll 88
