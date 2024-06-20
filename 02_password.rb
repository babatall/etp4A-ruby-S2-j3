

def signup
    puts "Définissez votre mot de passe :"
    print "> "
    password = gets.chomp
    return password
  end
  
  def login(stored_password)
    puts "Entrez votre mot de passe :"
    print "> "
    input_password = gets.chomp
  
    while input_password != stored_password
      puts "Mot de passe incorrect. Veuillez réessayer :"
      print "> "
      input_password = gets.chomp
    end
  
    puts "Mot de passe correct."
  end
  
  def welcome_screen
    puts "Bienvenue dans votre espace secret !"
    puts "Informations top secrètes de votre famille :"
    puts "- Les textos de babacar révèlent qu'il adore les chiens."
    puts "- galaye a commandé 5 pizzas aujourd'hui."
    
  end
  
  def perform
    stored_password = signup
    login(stored_password)
    welcome_screen
  end
  
  perform
  