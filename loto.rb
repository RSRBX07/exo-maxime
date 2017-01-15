#==================================================
#Création du bulletin de jeux
#5 chiffres entre 1 et 45 sont nécessaires. un double
# n'est pas permis.
#==================================================
def create_a_grid
  resultgame = []
  while resultgame.size <= 4
    print "jouez un chiffre entre 1 et 45 : "
    inputNumber = gets.to_i
    if inputNumber < 1 || inputNumber > 45
      puts "Jouez un chiffre valide entre 1 et 45."
    elsif resultgame.include?(inputNumber)
      puts "Vous avez déjà joué le #{inputNumber}, merci de rejouer un autre chiffre."
    else
      resultgame.push(inputNumber)
    end
  end
  puts "Votre bulletin est enregistré : #{resultgame.sort!}"
  resultgame
end

resultgame = create_a_grid

#==================================================
#Loto initial
#==================================================
number = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
  20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38,
  39, 40, 41, 42, 43, 44, 45]

result = []

5.times {
  varRand = rand (number.size)
  result.push(number[varRand])
  number.delete_at(varRand)
  }

puts "Le résultat du loto est       : #{result.sort!}"
#==================================================
#Resultat
#==================================================
count = 0
lastresult = 1

5.times {
if resultgame[count] != result[count]
  lastresult = 0
  count += 1
end
}

if lastresult == 1
  puts "Vous avez gagné !"
else
  puts "Vous avez perdu."
end
