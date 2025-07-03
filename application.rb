
class Planet
  @radius
  @weight
  @habitable
  @area
  @orbit_radius
  @rotation_speed
  @rotation_speed_trasp
  @total_days

  def initialize(radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
    @radius = radius # RAGGIO PIANETA
    @weight = weight # Peso del pianeta
    @habitable = habitable # Il pianeta è abitabile?
    @area = (4/3)*@radius**3*3.14 # Area del pianeta
    @orbit_radius = orbit_radius # Raggio dell'orbita
    @rotation_speed = rotation_speed # Velocità di rotazione nell'orbita
  end

  def area
    print @area
    print "\n"
  end

  def is_habitable
    if @habitable
      print "Benvenuta\n" 
    else
      print "Sei morta\n"
    end
  end

  def duration
    circunference = (2*3.14)*@orbit_radius
    @rotation_speed_trasp = @rotation_speed*24
    @total_days = circunference/@rotation_speed_trasp

    print @total_days
    print "\n"
  end

  def radius
    return @radius
  end

  def radius=(r)
    @radius = r
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
