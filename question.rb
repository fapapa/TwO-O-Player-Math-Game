# frozen_string_literal: true

# Generates a random, easy math question
class Question
  MAX_NUM = 20

  def initialize(player)
    @player = player
    @num_1 = rand(MAX_NUM)
    @num_2 = rand(MAX_NUM)
    @answer = @num_1 + @num_2
  end

  def correct?(player_answer)
    player_answer == @answer
  end

  def to_s
    "#{@player}: What does #{@num_1} plus #{@num_2} equal?"
  end
end
