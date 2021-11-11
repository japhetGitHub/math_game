require './game'

game = Game.new

continue = true
until continue == false
  continue = game.game_loop
end

puts "Good bye!"