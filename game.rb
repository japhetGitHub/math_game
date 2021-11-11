require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def next_player
    @current_player == @player1 ? @player2 : @player1
  end

  def game_loop
    puts "----- NEW TURN -----"

    current_question = Question.new(rand(1...10), rand(1...10))
    puts "#{@current_player}:  #{current_question}"
    attempt = @current_player.attempt

    if current_question.correct_answer?(attempt)
      puts "#{@current_player}: YES! You are correct."
    else
      puts "#{@current_player}: Seriously? No!"
      @current_player.lives -= 1
    end

    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3 "

    if @current_player.is_dead?
      puts "#{next_player} wins with a score of #{next_player.lives}/3"
      puts "----- GAME OVER -----"
      return false
    else
      @current_player = next_player
      return true
    end 
  end

end