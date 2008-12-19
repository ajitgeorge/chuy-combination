require 'single_iterator'

class Iterator
  def initialize(sets)
    @single_iterators = sets.collect { |set| SingleIterator.new(set) }
  end
  
  def next
    result = @single_iterators.collect { |si| si.current }
    @single_iterators.reverse.each do |si|
      si.next
      break unless si.at_beginning?
    end
    result
  end
  
  def at_beginning?
    iterators_at_beginning = @single_iterators.collect { |si| si.at_beginning? }
    !iterators_at_beginning.include?(false)
  end
end