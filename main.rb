require './player.rb'
require './game.rb'

puts('Please enter Player 1 name')
player_one = Player.new(gets.chomp, 3)
puts('Please enter Player 2 name')
player_two = Player.new(gets.chomp, 3)
game = Game.new(player_one,player_two)

game.generate_question()

while (player_one.life > 0 && player_two.life > 0)
  puts("----- NEW TURN -----")
  game.generate_question()
  player_answer = gets.chomp
  if player_answer == game.answer.to_s
    puts("Correct!")
  else
    puts("Wrong!")
    game.current_player.deduct_life()
  end
  puts("#{game.players[0].name}: #{game.players[0].life}/3 vs. #{game.players[1].name}: #{game.players[1].life}/3")
  game.switch_player()
end

puts("#{game.current_player.name} wins with a score of #{game.current_player.life}/3")
puts("----- GAME OVER -----")
puts("Good bye!")

