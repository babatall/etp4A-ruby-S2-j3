

def full_pyramid 

def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    number_of_floors = gets.chomp.to_i
    
    # Vérifier que le nombre est bien entre 1 et 25
    while number_of_floors < 1 || number_of_floors > 25
      puts "Veuillez entrer un nombre entre 1 et 25 :"
      print "> "
      number_of_floors = gets.chomp.to_i
    end
    
    puts "Voici la pyramide :"
    
    number_of_floors.times do |i|
      spaces = ' ' * (number_of_floors - i - 1)
      hashes = '#' * (i + 1)
      puts spaces + hashes
    end
end
half_pyramid
end
full_pyramid