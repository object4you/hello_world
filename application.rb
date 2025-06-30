
class Planet
  @radius
  @weight
  @habitable
  @area
  @orbit_radius
  @rotation_speed
  @rotation_speed_trasp
  @total_days

  def initialize(r, w, h, o, v)
    @radius = r # RAGGIO PIANETA
    @weight = w # Peso del pianeta
    @habitable = h # Il pianeta è abitabile?
    @area = (4/3)*@radius**3*3.14 # Area del pianeta
    @orbit_radius = o # Raggio dell'orbita
    @rotation_speed = v # Velocità di rotazione nell'orbita
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
end


giove = Planet.new(71492, 932876947351, true, 778000000, 47000)
venere = Planet.new(500, 2, false, 860, 2)

giove.area
venere.area
giove.is_habitable
venere.is_habitable
giove.duration
venere.duration

# TODO aggiungere parametro raggio orbita e velocità di rotazione, crea funzione che mi stampa la durata di un anno
# pseudocodice
# 
#calcolo circonferenza 
#converto km/h in km/24h
#divido la circonferenza per i km fatti in un giorno e ottengo il numero di giorni
#
#
#DOMANDE:
#