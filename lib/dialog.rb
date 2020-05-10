class Dialog

  def start
    system('clear')
    puts 'Bienvenue dans le jeu du pendu :) '
    puts 'La partie va commencer, préparez-vous !!'
    puts "Vous devez deviner le mot avant d'être pendu haut et court comme un petit batard :) "
    print ' Appuie sur Entrer > '
    gets.chomp
    system('clear')
  end

  def letter_choice
    puts ''
    puts 'Merci de choisir une lettre'
  end

  def choice
    puts '1. Start a new game'
    puts '2. Quit (because I suck)'
    puts 'merci de choisir une option: '
    print '>'
    input = gets.chomp
    if input == 2
      exit
    else
      Game.perform
    end
  end
end