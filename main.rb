require_relative 'game'
require_relative 'player'
require_relative 'questions'

puts "Player 1, please enter your name:"
player1 = gets.chomp

puts "Player 2, please enter your name:"
player2 = gets.chomp

new_game = Game.new(Player.new(player1), Player.new(player2))

new_game.start_game