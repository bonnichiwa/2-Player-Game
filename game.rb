require './player.rb'
require './question.rb'

class Game

  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
  end

  def begin

    while @player_1.life > 0 && @player_2.life > 0

      @question = Question.new(1)
      
      puts @question.text
      @input = gets.chomp.to_i

      if @input == @question.result
        puts "correct!"
        @player_1.increment_point 
        puts "Player 1, you have #{@player_1.point} point(s) total right now."
      else
        puts "wrong!"
        @player_1.decrement_life 
        puts "Player 1, you have #{@player_1.life} live(s) left right now."
      end

      @question = Question.new(2)

      puts @question.text
      @input = gets.chomp.to_i

      if @input == @question.result
        puts "correct!"
        @player_2.increment_point
        puts "Player 2, you have #{@player_2.point} point(s) total right now."
      else
        puts "wrong!"
        @player_2.decrement_life
        puts "Player 2, you have #{@player_2.life} live(s) left right now."
      end
    end
    winner
  end

  def winner
    if @player_1.life > @player_2.life
      puts "Thanks for playing! The winner is Player 1! They have #{@player_1.point} point(s)!"
    else
      puts "Thanks for playing! The winner is Player 2! They have #{@player_2.point} point(s)!"
    end
  end

end





