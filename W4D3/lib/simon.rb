require 'byebug'
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play

    until @game_over
      self.take_turn
    end

    if @game_over
      self.game_over_message
      self.reset_game
    end

  end

  def take_turn
    self.show_sequence
    self.require_sequence
    #debugger
    if !@game_over
      self.round_success_message
      self.sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    rand_num = rand(0..3)
    @seq << COLORS[rand_num]
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    #debugger
    @game_over = false
    @seq = []
    self.sequence_length = 1
  end
end
