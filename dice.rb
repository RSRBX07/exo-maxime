#maxime
def roll cheat
  if cheat
    dice = [1,2,3,4,5,6]
  else
    dice = [cheat]
  end
  nbr = dice.size
  result = rand nbr
  dice[result]
end

print "lancer un dé : "
input = gets.to_i


puts roll input
