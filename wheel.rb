class Wheel
  def initialize(array)
    @array = array
    @num_rotations = 0
  end
  
  def current
    @array[pos]
  end
  
  def rotate
    @num_rotations += 1
  end
  
  def rolled_over?
    @num_rotations > 0 && pos == 0
  end
  
  def pos
    @num_rotations % @array.size
  end
end
