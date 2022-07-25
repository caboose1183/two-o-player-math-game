require_relative 'Player'
require_relative 'Question'
require_relative 'Game'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)

while (player1.lives > 0 || player2.lives > 0)
  game.round
end

puts "----- GAME OVER -----"
puts "Good bye!"