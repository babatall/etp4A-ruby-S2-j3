
def ask_first_name()
    puts "Quel est votre prénom ? "
    first_name = gets.chomp
    return first_name
end

def say_hello(first_name)
    puts("Bonjour, #{first_name} !")
end


# Combinaison des deux méthodes
prenom = ask_first_name()
say_hello(prenom)



