#maxime
def roll (cheat = nil)
  
  if cheat
    return cheat
  end
  
  dice = [1,2,3,4,5,6]
  index = rand 6
  dice[index]
  
end

puts roll

puts roll 88
