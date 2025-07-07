class Planet
  attr_accessor :radius
  attr_writer :area
  attr_accessor :weight
  attr_accessor :habitable
  attr_accessor :orbit_radius
  attr_accessor :rotation_speed
  attr_accessor :rotation_speed_trasp
  attr_accessor :total_days

  def initialize(radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
    self.radius = radius # RAGGIO PIANETA
    self.weight = weight # Peso del pianeta
    self.habitable = habitable # Il pianeta è abitabile?
    self.orbit_radius = orbit_radius # Raggio dell'orbita
    self.rotation_speed = rotation_speed # Velocità di rotazione nell'orbita
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

  def area
    (2*3.14)*self.radius
  end
end

#attr_accessor ci crea i metodi di scrittura e lettura di un attributo
#dovrò sovrascrivere il metodo di scrittura in modo che abbia le mie logiche
#per creare solo il metodo di lettura = attr_reader
#per creare solo il metodo di scrittura = attr_writer
#nell attributo area far creare da ruby solo il metodo della lettura mentre quello della scrittura va fatto da noi