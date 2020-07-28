require 'byebug'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = self.make_board
  end

  def make_board
    board = Array.new(14) {Array.new([])}
    i = 0
    while i < 6 || i > 6 && i < 13
      board[i] = :stone, :stone, :stone, :stone
      i += 1
    end
    board
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if (start_pos > 12 || start_pos < 0) || (start_pos == 6)
      raise "Invalid starting cup"
    end

    if cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)

    stones = @cups[start_pos]
    
    i = start_pos + 1
    until stones.empty?
      stone = stones.pop
      #debugger
      if i > 13
        #debugger
        i = 0
      elsif @cups[i] == 13 && current_player_name == @player2
        @cups[i] << stone  
        #debugger
      elsif @cups[i] == 6 && current_player_name == @player1
        @cups[i] << stone
        #debugger
      else
        @cups[i] << stone
        #debugger
      end
      i += 1
    end

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
