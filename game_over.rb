class GameOver
  def you_lose
    puts 'Vous avez perdu espèce de merde !!'
    puts 'Voulez-vous jouer à nouveau? y/n'
    print '>'
    answer = gets.chomp
    if answer == 'y'
      Game.new.start
    else
      puts 'A bientôt...'
      exit
    end
  end

  def you_won
    puts 'Vous avez gagné, Félicitations !!'
    puts 'Voulez-vous rejouer ? y/n'
    print '>'
    answer = gets.chomp
    if answer == 'y'
      Game.new.perform
    else
      puts 'A bientôt...'
      exit
    end
  end
end