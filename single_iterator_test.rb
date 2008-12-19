require "test/unit"

require "single_iterator"

class TestSingleIterator < Test::Unit::TestCase
  def test_case_name
    single_iterator = SingleIterator.new([1])

    # assert !single_iterator.at_beginning?
    assert_equal 1, single_iterator.next
    assert single_iterator.at_beginning?
    assert_equal 1, single_iterator.next
    assert single_iterator.at_beginning?
  end
  
  def test_three
    iterator = SingleIterator.new([1, 2, 3])

    # assert !iterator.at_beginning?
    assert_equal 1, iterator.next
    assert !iterator.at_beginning?
    assert_equal 2, iterator.next
    assert !iterator.at_beginning?
    assert_equal 3, iterator.next

    assert iterator.at_beginning?
    assert_equal 1, iterator.next
    assert !iterator.at_beginning?
    assert_equal 2, iterator.next
    assert !iterator.at_beginning?
    assert_equal 3, iterator.next
    assert iterator.at_beginning?
  end
end