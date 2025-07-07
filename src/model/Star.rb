require_relative "Planet.rb"

class Star < Planet
  attr_accessor :brightness

  def initialize(brightness:, radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
    self.brightness = brightness
    super(radius:, weight:, habitable:, orbit_radius:, rotation_speed:)
  end
end