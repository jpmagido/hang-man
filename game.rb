require './lib/word.rb'
require './lib/scaffold.rb'
require './lib/dialog.rb'
require './lib/game_over.rb'

class Game

  def self.perform
    @word = Word.new
    @scaffold = Scaffold.new
    @dialogs = Dialog.new
    @game_over = GameOver.new

    @dialogs.start
    @word.crypted_word
    while @scaffold.death?
      system('clear')
      @scaffold.display
      print 'Le mot: ', @word.crypted_word.values.map(&:first)
      puts ''
      print "Vous avez essayé #{@word.wrong_letters.inspect}"
      @dialogs.letter_choice
      @scaffold.level_up unless @word.guess_letter
      @game_over.you_won unless @word.crypted_word.values.map(&:first).include?('_ ')
    end
    @game_over.you_lose
  end
end

Game.perform