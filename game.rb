def dice
    faces = ["pont", "pont", "igloo", "igloo", "glacon", "glacon"]
    throwing_dice = rand(faces.size)
    faces[throwing_dice]
end

def game 
  pont = 6
  while pont != 0 #|| animal[pingouin] != "igloo" || animal[lapin] != "igloo" || animal[ours] != "igloo" || animal[pingouin] != "igloo"
    fdice = dice
    if fdice == "pont"
      message = "déplacer un animal vers le pont"
    elsif fdice == "igloo"
      message = "déplacer un animal vers l'igloo"
    elsif fdice == "glacon"
      message = "       la banquise fond …      "
      pont -= 1
      puts pont
    end
    #system("cls")
    puts "============================================"
    puts "|      #{message}     |"
    puts "============================================"
    dice
  end

end

def menu
  play = "j"
  help = "r"
  quit = "q"
  puts "========================================="
  puts "|      Bienvenue le jeux de l'igloo     |"
  puts "========================================="
  print "jouer (j) regle du jeux (r) quitter (q): "
  reponse = gets.chomp.downcase.to_sym
  if reponse != play.to_sym && reponse != help.to_sym && reponse != quit.to_sym
    system("cls")
    menu
  elsif reponse == play.to_sym
    game
  elsif reponse == help.to_sym
    system("cls")
    puts""
    puts"Sur la banquise, 4 petits animaux tentent de regagner leur igloo. "
    puts"Attention car le pont de glace menace de s’écrouler"
    puts"Un jeu qui se joue en coopération pour apprendre à jouer "
    puts"et à gagner tous ensemble."
    puts""
    puts"Contenu :"
    puts" 4 animaux, 3 plateaux de jeu (1 plateau de départ « pêche », "
    puts" 1 pont de glace, 1 plateau d’arrivée « igloo »),"
    puts" 6 piliers en bois (piliers du pont), 1 dé "
    puts""
    puts"Préparation :"
    puts" Les 3 plateaux sont placés au centre de la table : "
    puts" le pont entre les deux plateaux "
    puts" banquise est posé sur les 6 piliers en bois. "
    puts" Les 4 animaux sont placés sur le plateau "
    puts" de départ à côté du trou de pêche."
    puts""
    puts"Déroulement du jeu : "
    puts" À chaque tour de jeu, les joueurs peuvent avancer l’animal de leur choix. "
    puts" On joue dans le sens des aiguilles d’une montre. "
    puts" Le plus jeune joueur lance le dé."
    puts""
    puts"face pont :  le joueur peut avancer l’animal de son choix de la banquise pêche vers le pont"
    puts""
    puts"face igloo : le joueur peut avancer l’animal de son choix du pont vers la banquise igloo"
    puts""
    puts"face glaçon : la banquise fond … il faut ôter un des piliers du pont"
    puts""
    puts"Qui gagne ?"
    puts"Les joueurs gagnent ou perdent ensemble."
    puts"Les joueurs gagnent s’ils ont amené tous les animaux sur la banquise igloo avant"
    puts"que le pont ne s’écroule."
    puts"En revanche, si le pont s’écroule avant que tous les animaux soient sur la banquise"
    puts"igloo, tous les joueurs ont perdu la partie."
    menu
  elsif reponse == quit.to_sym
    puts "Merci"
  end
end

menu
#pont = [6]
#igloo = []
=begin
  
rescue => exception
  
end
peche = ["pingouin", "ours", "lapin", "loup"]

while pont[0] == 0 || igloo.size == 4
  
end
=end