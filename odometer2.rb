require 'wheel'

class Odometer
  def initialize(sets)
    @wheels = sets.collect { |set| Wheel.new(set) }
  end
  
  def current
    @wheels.collect { |wheel| wheel.current }
  end
  
  def rotate
    @wheels.each do |wheel|
      wheel.rotate
      break unless wheel.rolled_over?
    end
  end
  
  def rolled_over?
    wheels_rolled_over = @wheels.collect { |wheel| wheel. rolled_over? }
    !(wheels_rolled_over.include? false)
  end
end

def combine(sets)
  odometer = Odometer.new(sets)
  
  combinations = []
  until odometer.rolled_over? do
    combinations << odometer.current
    odometer.rotate
  end
  
  combinations
end