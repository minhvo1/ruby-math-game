require './player.rb'
require './game.rb'

puts('Please enter Player 1 name')
player_one = Player.new(gets.chomp, 3)
puts('Please enter Player 2 name')
player_two = Player.new(gets.chomp, 3)
game = Game.new(player_one,player_two)

game.generate_question()

while (player_one.life > 0 && player_two.life > 0)
  puts("#{game.current_player.name} Turn")
  game.generate_question()
  player_answer = gets.chomp
  if player_answer == game.answer.to_s
    puts("Correct!")
  else
    puts("Wrong!")
    game.current_player.deduct_life()
  end
  puts("Your remaining life: #{game.current_player.life}")
  game.switch_player()
end
