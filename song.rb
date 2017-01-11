=begin
Ma poule n'a plus qu'vingt-neuf poussins
Ma poule n'a plus qu'vingt-neuf poussins
Elle en avait trente
Allongeons la jambe !

Refrain
Allongeons la jambe, la jambe
Car la route est longue !
Allongeons la jambe, la jambe
Car la route est longue !

Ma poule n'a plus qu'vingt-huit poussins
Ma poule n'a plus qu'vingt-huit poussins
Elle en avait trente
Allongeons la jambe !

Refrain
=end

poussins = 29

30.times {
  puts "Ma poule n'a plus qu'#{poussins} poussins \n" *2
  puts "Elle en avait trente"
  puts "Allongeons la jambe !"
  puts " "
  puts "Allongeons la jambe, la jambe \nCar la route est longue ! \n" *2
  puts " "
  poussins -= 1
}