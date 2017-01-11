#maxime
def roll cheat
  if cheat == 0
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
if input == 0
  incheat = 0
else
  incheat = input
end
puts roll incheat
