class Zombie
  attr_accessor :name, :brains, :alive, :rotting, :height

  def initialize
    self.name = "Ash"
    self.brains = 0
    self.alive = false
    self.rotting = true
    self.height = 6
  end

  def hungry?
    true
  end

end