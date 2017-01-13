def dice
  faces = ["pont", "pont", "igloo", "igloo", "glacon", "glacon"]
  throwing_dice = rand(faces.size)
  faces[throwing_dice]
end

def status_message indication
  puts "============================================"
  puts "|      #{indication}     |"
  puts "============================================"
end

def game 
  hp_pont = 6
  card_and_animals = {"pingouin" => "peche","lapin" => "peche","ours" => "peche","loup" => "peche"}
  while hp_pont != 0 
    result_of_dice = dice
    if result_of_dice == "pont"
      exit_while = 1
      while exit_while != 0
        indication = "déplacer un animal vers le pont"
        status_message indication
        tmp = []
        card_and_animals.each do |clef, valeur|
          if valeur != "pont"
            print " #{clef}"
            tmp.push(clef)
          end
        end
        if tmp.size == 0
          print "pas d'animal à déplacer appuyer sur entrée"
          exit_while = 0
        end
        print " :"
        reponce = gets.chomp.downcase
        tmp.each do |clef|
          if clef == reponce
            exit_while = 0
          end
        end
      end
      card_and_animals[reponce] = "pont"
    elsif result_of_dice == "igloo"
      exit_while = 1
      while exit_while != 0
        indication = "déplacer un animal vers l'igloo"
        status_message indication
        tmp = []
        card_and_animals.each do |clef, valeur|
          if valeur == "pont"
            print " #{clef}"
            tmp.push(clef)
          end
        end
        if tmp.size == 0
          print "pas d'animal à déplacer appuyer sur entrée"
          exit_while = 0
        end
        print " :"
        reponce = gets.chomp.downcase
        tmp.each do |clef|
          if clef == reponce
            exit_while = 0
          end
        end
      end
      card_and_animals[reponce] = "igloo"
    elsif result_of_dice == "glacon"
      indication = "       la banquise fond …      "
      status_message indication
      hp_pont -= 1
      puts "Il reste #{hp_pont} PV au pont."
    end
    if hp_pont == 0
      system("cls")
      puts "========================================="
      puts "|            Vous avez perdu            |"
      puts "========================================="
      menu
    else 
      final = 1
      card_and_animals.each_value do |valeur|
        if valeur != "igloo"
          final = 0
        end
      end
      if final == 1 
        system("cls")
        puts "========================================="
        puts "|            Vous avez gagné            |"
        puts "========================================="
        menu
      end
    end
  end
end

def menu
  play = "j"
  help = "r"
  quit = "q"
  puts "========================================="
  puts "|      Bienvenue le jeux de l'igloo     |"
  puts "========================================="
  print "jouer (j) règle du jeu (r) quitter (q): "
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
