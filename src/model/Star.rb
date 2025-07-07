# Andiamo a caricare il file Planet.rb
require_relative "Planet.rb"

# Diachiarata la classe Star che estende la classe Planet
class Star < Planet
  # Dichiarata la variabile Brightness tramite l'attr_accessor
  attr_accessor :brightness

  # Dichiariamo un initializer custom.
  # @params parametri della classe pianeta più brightness
  def initialize(brightness:, radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
    self.brightness = brightness
    # Una volta inizializzati i parametri specifici di Star deleghiamo l'initializer di Planet per le altre variabili
    super(radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
  end
end