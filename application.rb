class Planet


  @radius
  @weight
  @habitable
  @area

  def initialize(r, w, h)
    @radius = r
    @weight = w
    @habitable = h
    @area = (4/3)*@radius**3*3.14
  end

  def area
    print @area
    print "\n"
  end

  def is_habitable
    if @habitable
      print "Benvenuto\n" 
    else
      print "Sei morto\n"
    end
  end

end


giove = Planet.new(1000, 5900000, true)
venere = Planet.new(500, 2, false)

giove.area
venere.area
giove.is_habitable
venere.is_habitable


# TODO aggiungere parametro raggio orbita e velocità di rotazione, crea funzione che mi stampa la durata di un anno
# pseudocodice
# 
#calcolo circonferenza 
#converto km/h in km/24h
#divido la circonferenza per i km fatti in un giorno e ottengo il numero di giorni