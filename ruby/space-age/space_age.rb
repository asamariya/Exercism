# frozen_string_literal:true

# Calculate space age based on earth years and given seconds
class SpaceAge
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  EARTH = 31_557_600

  other_planets = {
    mercury: EARTH * 0.2408467,
    venus: EARTH * 0.61519726,
    mars: EARTH * 1.8808158,
    jupiter: EARTH * 11.862615,
    saturn: EARTH * 29.447498,
    uranus: EARTH * 84.016846,
    neptune: EARTH * 164.79132
  }

  def on_earth
    @seconds / EARTH.to_f
  end

  other_planets.each do |planet, period|
    define_method("on_#{planet}") { (seconds / period).to_f }
  end
end
