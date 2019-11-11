# frozen_string_literal: true

require './turn.rb'
require './player.rb'

# A *game* is what will keep seperate each instance of a pairing of two players,
# and all their turns and answers. Obviously the game will be played more than
# once, and maybe there will be more than one game going on at once. It will
# store the player pairing, switch between them as they take turns, and direct
# the storing of answers, taking away of lives, etc.
class Game
  def initialize(player_a, player_b)
    @player_a = player_a
    @player_b = player_b
    @current_turn_player = @player_a
  end

  def play_next_turn
    turn = Turn.new(@current_turn_player)
    turn.ask_question
    @current_turn_player.decrement_life unless turn.correct?
    print_status
    next_player
  end

  def print_status
    if @player_a.dead? || @player_b.dead?
      winner = @player_b.dead? ? @player_a : @player_b
      puts "#{winner} wins with a score of #{winner.lives}/#{Player::MAX_LIVES}"
      puts '----- GAME OVER -----'
    else
      print "P1: #{@player_a.lives}/#{Player::MAX_LIVES} vs "
      puts "P2: #{@player_b.lives}/#{Player::MAX_LIVES}"
      puts '----- NEW TURN -----'
    end
  end

  private

  def next_player
    @current_turn_player = @current_turn_player == @player_a ?
                             @player_b : @player_a
  end
end
