class System

  attr_reader :bodies

  def initialize
    @bodies = []
  end

  def add

  end

  def total_mass
    total = 0
    @bodies.each do |value|
      value += total
      return total
    end
  end
end

class Body

  attr_reader :name, :mass

  def initialize(name, mass)
    @name = name.to_s
    @mass = mass.to_f
  end

end

class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
    @moons = []
  end

end

class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
    @planet.moons << self
  end

end
