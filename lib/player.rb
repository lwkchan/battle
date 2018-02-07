class Player

  MAX_HP = 100

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = MAX_HP
  end

end
