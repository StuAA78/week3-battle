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

  def attack(attacker, defender, damage)
    defender.take_damage(damage)
  end

end
