class Player

  MAX_HP = 100
  DEFAULT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = MAX_HP
  end

  def damage
    @hit_points -= DEFAULT_DAMAGE
  end

end
