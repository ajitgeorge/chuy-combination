require "test/unit"

require "combination"

class TestCombination < Test::Unit::TestCase
  def test_no_sets
    assert_equal [], combine([])
  end
  
  def test_one_set
    assert_equal [[1], [2], [3]], combine([[1, 2, 3]])
  end
  
  def test_singletons
    assert_equal [[1]], combine([[1]])
    assert_equal [[1, 2]], combine([[1], [2]])
    assert_equal [[1, 2, 3]], combine([[1], [2], [3]])
  end
  
  def test_pairs
    assert_equal [[1, 3], [1, 4], [2, 3], [2, 4]], combine([[1, 2], [3, 4]])
  end
  
  def test_example
    assert_equal [
                  [1, 4, 6], 
                  [1, 4, 7], 
                  [1, 4, 8], 
                  [1, 5, 6],
                  [1, 5, 7],
                  [1, 5, 8],
                  [2, 4, 6], 
                  [2, 4, 7], 
                  [2, 4, 8], 
                  [2, 5, 6],
                  [2, 5, 7],
                  [2, 5, 8],
                  [3, 4, 6], 
                  [3, 4, 7], 
                  [3, 4, 8], 
                  [3, 5, 6],
                  [3, 5, 7],
                  [3, 5, 8],
                  ], combine([[1, 2, 3], [4, 5], [6, 7, 8]])
  end
end