
class Planet
  attr_accessor :radius
  attr_accessor :weight
  attr_accessor :habitable
  attr_accessor :area
  attr_accessor :orbit_radius
  attr_accessor :rotation_speed
  attr_accessor :rotation_speed_trasp
  attr_accessor :total_days

  def initialize(radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
    self.radius = radius # RAGGIO PIANETA
    self.weight = weight # Peso del pianeta
    self.habitable = habitable # Il pianeta è abitabile?
    self.area = (4/3)*self.radius**3*3.14 # Area del pianeta
    self.orbit_radius = orbit_radius # Raggio dell'orbita
    self.rotation_speed = rotation_speed # Velocità di rotazione nell'orbita
  end

  def area
    print self.area
    print "\n"
  end

  def is_habitable
    if self.habitable
      print "Benvenuta\n" 
    else
      print "Sei morta\n"
    end
  end

  def duration
    circunference = (2*3.14)*self.orbit_radius
    self.rotation_speed_trasp = self.rotation_speed*24
    self.total_days = circunference/self.rotation_speed_trasp

    print self.total_days
    print "\n"
  end
end


giove = Planet.new(radius: 71492, weight: 932876947351, habitable: true, orbit_radius: 778000000, rotation_speed: 47000)
venere = Planet.new(radius: 500, weight: 2, habitable: false, orbit_radius: 860, rotation_speed: 2)

giove.area
venere.area
giove.is_habitable
venere.is_habitable
giove.duration
venere.duration
