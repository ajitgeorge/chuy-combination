def combine(sets)
  case
  when sets.size == 0: 
    # [] => []
    []
  when sets.size == 1:
    # [a, b, c] => [[a], [b], [c]]
    sets[0].collect { |elem| [elem] } 
  when !sets.empty?:
    # for each element in set, prepend it to all the combinations of rest
    set = sets[0]
    rest = sets[1..-1]
    combinations = []
    set.each do |elem|
      combine(rest).each do |c|
        combinations << c.unshift(elem)
      end
    end
    combinations
  end
end