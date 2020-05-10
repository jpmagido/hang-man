class Word
  attr_reader :word
  attr_accessor :crypted_word, :letter, :wrong_letters

  def initialize
    @word = %w(bite promenade bateau citerne soleil maison poteau vigne salade marcher avion salopette).sample
    @crypted_word = create_crypted_word
    @letter = ''
    @wrong_letters = []
  end

  def create_crypted_word
    @crypted_word = {}
    increment = 0
    @word.chars.map do |letter|
      @crypted_word[increment] = ['_ ', letter]
      increment += 1
    end
    puts @crypted_word
    @crypted_word
  end

  def guess_letter
    print 'Guess a letter >'
    @letter = gets.chomp
    letter_correct?
  end

  def letter_correct?
    if @word.include?(@letter)
      indexes = []
      @word.chars.each_with_index { |l, i| indexes.push([i, l]) if l == @letter }
      indexes.each do |idx, letter|
        @crypted_word[idx] = [letter, '_ ']
      end
      puts "Bien joué, vous avez trouvé le '#{@letter}'"
      print 'Appuies sur Entrer > '
      puts gets.chomp
      true
    else
      @wrong_letters << @letter
      puts "Oups, le '#{@letter}' n'est pas présent dans le mot"
      print 'Appuies sur Entrer > '
      puts gets.chomp
      false
    end
  end

  private

  def update_crypted_word
    @crypted_word[@letter] = @letter
  end
end