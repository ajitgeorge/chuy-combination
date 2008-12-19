class SingleIterator
  def initialize(array)
    @array = array
    @pointer = 0
  end
  
  def next
    result = @array[@pointer]
    @pointer = (@pointer + 1) % @array.size
    result
  end
  
  def at_beginning?
    @pointer == 0
  end
end