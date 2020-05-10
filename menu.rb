class Menu
  def welcome
    puts 'welcome stranger !'
    puts 'this is classic hang man game'
    puts 'be ready to play'
    gets.chomp
    choice
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
      Game.new.start
    end
  end
end