class Wheel
  def initialize(array)
    @array = array
    @pos = 0
    @rolled_over = false
  end
  
  def current
    @array[@pos]
  end
  
  def rotate
    @pos = (@pos + 1) % @array.size
    @rolled_over = @pos == 0
  end
  
  def rolled_over?
    @rolled_over
  end
end
