require 'single_iterator'

class Iterator
  def initialize(sets)
    @single_iterators = sets.collect { |set| SingleIterator.new(set) }
  end
  
  def next
    [@single_iterators.last.next]
  end
  
  def at_beginning?
    @single_iterators.last.at_beginning?
  end
end