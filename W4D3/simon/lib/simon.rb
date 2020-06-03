class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    puts
    self.round_success_message unless self.game_over
    self.sequence_length += 1
  end

  def show_sequence
    self.add_random_color
    puts self.seq.join(" ")
    puts
    puts "Press 'enter' when you're done memorizing."
    gets
    system("clear")
  end

  def require_sequence
    puts "Please, enter the sequence with spaces in between."
    puts "'red', 'blue', 'green', or 'yellow'"
    puts
    input = gets.chomp.split(" ")
    self.game_over = true unless input == self.seq 
      
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    puts "OOOOWEEE, YOU NAILED IT! Next round..."
  end

  def game_over_message
    puts "SORRY, GAME OVER"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

if __FILE__ == $PROGRAM_NAME

game = Simon.new
game.play

end