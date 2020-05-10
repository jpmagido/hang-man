require './word.rb'
require './scaffold.rb'
require './dialog.rb'
require './game_over.rb'

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
      @dialogs.letter_choice
      unless @word.guess_letter
        @scaffold.level_up
      end
      @game_over.you_won unless @word.crypted_word.values.map(&:first).include?('_ ')
    end
    @game_over.you_lose
  end
end

Game.perform