#maxime
def roll (cheat = nil)
  if cheat
    return cheat
  else
    dice = [1,2,3,4,5,6]
    nbr = dice.size
    result = rand nbr
    dice[result]
  end
end

puts roll

puts roll 88
