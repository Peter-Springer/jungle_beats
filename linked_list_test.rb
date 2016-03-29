require "minitest/autorun"
require "minitest/pride"
require "./linked_list.rb"

class LinkedListTest < Minitest::Test

  def test_linked_list_exists
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_head_returns_nil
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_append_returns_doop
    list = LinkedList.new
    result = list.append("doop")
    assert_equal "doop", result
  end

  def test_head_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    result = list.head.next_node
    assert_equal nil, result
  end

  def test_count_returns_one
    list = LinkedList.new
    result = list.count
    assert_equal 1, result
  end

  def test_to_string_returns_doop
    list = LinkedList.new
    result = list.to_string
    assert_equal "doop", result
  end




end
