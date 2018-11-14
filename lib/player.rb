class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def take_damage(damage)
    @hit_points -= damage
  end
end

class Game
  attr_reader :player_1, :player_2

  def initialize(player1, player2)
    @player_1 = player1
    @player_2 = player2
  end

  def attack(attacker, defender, damage)
    defender.take_damage(damage)
  end

end
