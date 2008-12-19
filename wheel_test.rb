require "test/unit"

require "wheel"

class TestWheel < Test::Unit::TestCase
  def test_case_name
    wheel = Wheel.new([1])

    assert !wheel.rolled_over?
    assert_equal 1, wheel.current
    wheel.rotate
    assert_equal 1, wheel.current
    
    assert wheel.rolled_over?
    wheel.rotate
    assert_equal 1, wheel.current

    assert wheel.rolled_over?
  end
  
  def test_three
    wheel = Wheel.new([1, 2, 3])

    assert !wheel.rolled_over?
    assert_equal 1, wheel.current
    wheel.rotate
    assert !wheel.rolled_over?
    assert_equal 2, wheel.current
    wheel.rotate
    assert !wheel.rolled_over?
    assert_equal 3, wheel.current
    wheel.rotate
    assert wheel.rolled_over?
    assert_equal 1, wheel.current
    wheel.rotate
    assert !wheel.rolled_over?
    assert_equal 2, wheel.current
    wheel.rotate
    assert !wheel.rolled_over?
    assert_equal 3, wheel.current
    wheel.rotate
    assert wheel.rolled_over?
    assert_equal 1, wheel.current
  end
end