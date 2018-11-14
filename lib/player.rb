class Player
  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = 60
  end

def attack(player, damage)
  player.take_damage(damage)
end

  def take_damage(damage)
    @hit_points -= damage
  end
end
