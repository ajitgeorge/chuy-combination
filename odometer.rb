require 'iterator'

def combine(sets)
  i = Iterator.new(sets)
  
  combinations = []
  
  begin
    combinations << i.next 
  end until i.at_beginning?
  
  combinations
end