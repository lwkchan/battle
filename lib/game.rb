class Game

  attr_reader :player_1, :player_2, :player_1_turn

  def initialize(player_1,player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = true
  end

  def attack(player)
    player.damage
  end

  def turn_switcher
    @player_1_turn = !@player_1_turn
  end

end
