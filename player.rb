# frozen_string_literal: true

# A *player* will store information on the individual user, how many lives they
# have remaining. It will have a method for sending an answer to the game.
class Player
  attr_reader :lives
  MAX_LIVES = 3

  def initialize(name)
    @name = name
    @lives = MAX_LIVES
  end

  def name
    @name.to_s
  end

  def decrement_life
    @lives -= 1
  end

  def dead?
    @lives < 1
  end

  def to_s
    name
  end
end
