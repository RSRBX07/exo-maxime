def roll
  dice = [1,2,3,4,5,6]
  nbr = dice.size
  #puts dice[rand nbr]
  result = rand nbr
  puts dice[result]
end

roll
