def add_city
    print "quelle est la ville à rajouter : "
    city = gets.chomp.downcase.to_sym
    print "quel est le code postal de #{city} : "
    postal_code = gets.to_i
    $postal_code_list[city] = postal_code
    system("cls")
    menu
end

def search_city
    print "rentrer le nom d'une ville : "
    city = gets.chomp.downcase.to_sym

    if $postal_code_list[city]
        postal_code = $postal_code_list[city]
        puts "Le code postal de #{city} est #{postal_code}"
    else
        puts "#{city} n'est pas référencé."
    end
    menu
end

def menu
  add = "a"
  search = "s"
  quit = "q"
  puts "========================================="
  puts "|  Bienvenue dans l'annuaire des villes |"
  puts "========================================="
  print "ajouter (a) rechercher (s) quitter (q): "
  reponse = gets.chomp.downcase.to_sym
  if reponse != add.to_sym && reponse != search.to_sym && reponse != quit.to_sym
    system("cls")
    menu
  elsif reponse == add.to_sym
    add_city
  elsif reponse == search.to_sym
    search_city 
  elsif reponse == quit.to_sym
    puts "Merci"
  end
end

$postal_code_list = {
    roubaix: 59100,
    douai: 59500,
    tours: 37000,
}

menu