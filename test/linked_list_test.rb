  require "minitest/autorun"
  require "minitest/pride"
  require "./lib/linked_list.rb"
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

    def test_append_returns_plop_suu
        list = LinkedList.new
        list.append ("plop")
        list.append ("suu")
        assert_equal "plop suu", list.to_string
      end

    def test_prepend_returns_dop
        list = LinkedList.new
        list.append ("plop")
        list.append ("suu")
        list.prepend ("dop")
        assert_equal "dop plop suu", list.to_string
      end

    def test_count_returns_3
      list = LinkedList.new
      list.append ("plop")
      list.append ("suu")
      list.prepend ("dop")
      assert_equal 3, list.count
    end

    def test_insert_woo_to_position_one
      list = LinkedList.new
      list.append ("plop")
      list.append ("suu")
      list.prepend ("dop")
      list.insert(1,"woo")
      assert true
    end

    def test_insert
      list = LinkedList.new
      list.append ("plop")
      list.append ("suu")
      list.prepend ("dop")
      list.insert(2,"woo")
      assert_equal "dop plop woo suu", list.to_string
      assert_equal "woo", list.head.next_node.next_node.data
    end

    def test_it_can_find_tail
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        list.append("plop")
        assert_equal "plop", list.find_tail.data
      end

    def test_check_that_find_is_working
      list = LinkedList.new
      list.append("doop")
      list.append("deep")
      list.append("shi")
      list.append("shu")
      assert_equal "shi", list.find(2,1)
      assert_equal "deep shi shu", list.find(1,3)
    end

  def test_includes?
      list = LinkedList.new
      list.append ("doop")
      list.append("deep")
      assert list.includes?("doop")
      refute list.includes?("dep")
    end

  def test_pop_off_the_last_node
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    list.append("shi")
    list.append("shu")
    assert_equal "shu", list.pop
  end

  def test_to_string
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    assert_equal "deep woo shi", list.to_string
  end
end
