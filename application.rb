require_relative "src/model/Planet.rb"

giove = Planet.new(radius: 71492, weight: 932876947351, habitable: true, orbit_radius: 778000000, rotation_speed: 47000)
venere = Planet.new(radius: 500, weight: 2, habitable: false, orbit_radius: 860, rotation_speed: 2)

giove.area
venere.area
giove.is_habitable
venere.is_habitable
giove.duration
venere.duration
