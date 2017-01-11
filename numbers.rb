#ex sur les nombres
annee = (3600 * 24) * 365
puts "#{annee} secondes dans une année"
#mon age
la = Time.now
origin = Time.new 0
#puts "#{age} mon age en secondes "
test = Time.now.to_i / annee
modul = Time.now.to_i % annee
puts modul
annee2 = Time.now.year - test
puts annee2