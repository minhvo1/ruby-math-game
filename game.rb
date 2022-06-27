class Game
  attr_accessor :current_player, :answer, :players
  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @current_player = player_one
    @answer = 0
  end

  def generate_question
    num_1 = rand(20) + 1
    num_2 = rand(20) + 1

    puts("#{@current_player.name}, what is #{num_1} plus #{num_2}?")
    @answer = num_1 + num_2

  end

  def switch_player
    if (@current_player == @players[0])
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end

  end
  
end