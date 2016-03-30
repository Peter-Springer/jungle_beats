require "minitest/autorun"
require "minitest/pride"
require "./linked_list.rb"
require 'pry'

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
    list.append("doop")
    assert_equal "doop", list.head.data
  end

  def test_head_next_node_is_nil
    list = LinkedList.new
    list.append("doop")
    result = list.head.next_node
    assert_equal nil, result
  end

  def test_count_returns_one
    list = LinkedList.new
    result = list.append("doop")
    assert_equal 1, list.count
  end

  def test_to_string_returns_doop
    list = LinkedList.new
    result = list.to_string
    assert_equal "", result
    list.append("doop")
  end

  def test_list_can_add_a_second_node
    list = LinkedList.new
    list.append("first")
    list.append("second")

    assert_equal "first", list.head.data
    assert_equal "second", list.head.next_node.data
  end

  def test_list_can_add_a_third_node
    list = LinkedList.new
    list.append("first")
    list.append("second")
    list.append("third")


    assert_equal "first", list.head.data
    assert_equal "second", list.head.next_node.data
    assert_equal "third", list.head.next_node.next_node.data
  end

  def test_append_deep
    list = LinkedList.new
    list.append ("deep")
    assert_equal "deep", list.head.data
  end

  def test_count_returns_2
    list = LinkedList.new
    result = list.append("doop")
    result = list.append("deep")
    assert_equal 2, list.count
  end

  def test_to_string_returns_doop_deep
    list = LinkedList.new
    result = list.append("doop")
    result = list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  # def test_prepend_exists


end
