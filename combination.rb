def combine(sets)
  return [] if sets.empty? 

  if sets.size == 1 then
    combinations = []
    sets[0].each do |elem| 
      combinations << [elem] 
    end
    return combinations
  end

  combinations = []

  
  if !sets.empty? then
    set = sets[0]
    rest = sets[1..-1]
    set.each do |elem|
      combine(rest).each do |c|
        combinations << [elem, c].flatten
      end
    end
  end
  
  combinations
end