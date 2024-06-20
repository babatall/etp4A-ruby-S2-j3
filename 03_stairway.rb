# lib/03_stairway.rb

def roll_dice
    rand(1..6)
  end
  
  def play_game
    current_step = 0
    turn_count = 0
  
    while current_step < 10
      dice = roll_dice
      turn_count += 1
  
      case dice
      when 5, 6
        current_step += 1
        puts "Vous avez fait #{dice}. Vous avancez d'une marche. Vous êtes maintenant à la marche #{current_step}."
      when 1
        current_step -= 1 unless current_step == 0
        puts "Vous avez fait #{dice}. Vous descendez d'une marche. Vous êtes maintenant à la marche #{current_step}."
      else
        puts "Vous avez fait #{dice}. Rien ne se passe. Vous êtes toujours à la marche #{current_step}."
      end
    end
  
    puts "Félicitations ! Vous avez atteint la 10ème marche en #{turn_count} tours."
    turn_count
  end
  
  def average_finish_time(num_games)
    total_turns = 0
  
    num_games.times do
      total_turns += play_game
    end
  
    average_turns = total_turns / num_games.to_f
    puts "Le nombre moyen de tours pour atteindre la 10ème marche après #{num_games} parties est de #{average_turns.round(2)}."
  end
  
  def perform
    puts "Bienvenue dans le jeu de l'escalier !"
    average_finish_time(100)
  end
  
  perform
  