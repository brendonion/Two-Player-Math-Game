require_relative 'game'
require_relative 'player'
require_relative 'questions'

new_game = Game.new(Player.new("Brendan"), Player.new("Plumbus"))

new_game.start_game