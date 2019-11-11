# frozen_string_literal: true

require './player.rb'
require './game.rb'

# Entry-point to the game
player_a = Player.new('Player 1')
player_b = Player.new('Player 2')
game = Game.new(player_a, player_b)

game.play_next_turn while !player_a.dead? && !player_b.dead?
