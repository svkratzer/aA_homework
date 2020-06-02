require_relative "./player.rb"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player_1 = Player.new(name1, 1)
    @player_2 = Player.new(name1, 2)
    @cups = Array.new(14) { [] }
    self.place_stones
  end

  def place_stones
    @cups[0..5].each do |cup|
      4.times { cup << :stone }
    end
    @cups[7..12].each do |cup|
      4.times { cup << :stone }
    end
  end

  def valid_move?(start_pos)
    
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
