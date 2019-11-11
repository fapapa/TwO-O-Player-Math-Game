# frozen_string_literal: true

require './question.rb'

# A *turn* will store a question, with its correct answer. When a
# player answers a question, it can check against the correct answer
# to see if the player got it right.
class Turn
  def initialize(player)
    @player = player
    @question = Question.new(@player)
    @correct = nil
  end

  def ask_question
    puts @question
    print '> '
    answer = gets.to_i

    print_result(answer)
  end

  def correct?
    @correct
  end

  def print_result(answer)
    if @question.correct?(answer)
      puts "#{@player}: YES! You are correct."
      @correct = true
    else
      puts "#{@player}: Seriously? No!"
      @correct = false
    end
  end
end
