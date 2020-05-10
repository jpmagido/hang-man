class Dialog
  attr_accessor :turn_number

  def initialize
    @turn_number = 0
  end

  def start
    system('clear')
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
end