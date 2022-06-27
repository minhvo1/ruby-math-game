require './player.rb'
require './game.rb'

puts('Please enter Player 1 name')
player_one = Player.new(gets.chomp, 3)
puts('Please enter Player 2 name')
player_two = Player.new(gets.chomp, 3)
game = Game.new(player_one,player_two)
