def roll
  dice = [1,2,3,4,5,6]
  nbr = dice.size
  result = rand nbr
  return dice[result]
end

puts roll
