require "test/unit"

require "iterator"

class TestIterator < Test::Unit::TestCase
  def test_case_name
    single_iterator = Iterator.new([[1]])

    assert single_iterator.at_beginning?
    assert_equal [1], single_iterator.next
    assert single_iterator.at_beginning?
    assert_equal [1], single_iterator.next
    assert single_iterator.at_beginning?
  end
  
  def test_single_place
    iterator = Iterator.new([[1, 2, 3]])

    assert iterator.at_beginning?
    assert_equal [1], iterator.next
    assert !iterator.at_beginning?
    assert_equal [2], iterator.next
    assert !iterator.at_beginning?
    assert_equal [3], iterator.next

    assert iterator.at_beginning?
    assert_equal [1], iterator.next
    assert !iterator.at_beginning?
    assert_equal [2], iterator.next
    assert !iterator.at_beginning?
    assert_equal [3], iterator.next
    assert iterator.at_beginning?
  end
  
  def test_two_places
    iterator = Iterator.new([[1, 2], [3, 4]])

    assert iterator.at_beginning?
    assert_equal [1, 3], iterator.next
    assert !iterator.at_beginning?
    assert_equal [1, 4], iterator.next
    assert !iterator.at_beginning?
    assert_equal [2, 3], iterator.next
    assert !iterator.at_beginning?
    assert_equal [2, 4], iterator.next

    assert iterator.at_beginning?
    assert_equal [1, 3], iterator.next
  end
end