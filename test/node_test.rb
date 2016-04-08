require "minitest/autorun"
require "minitest/pride"
require "./lib/node.rb"

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new
    assert_equal Node, node.class
  end

  def test_data_returns_plop
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_returns_nil
    node = Node.new
    assert_equal nil, node.next_node
  end

  def test_data_returns_nil_by_default
    node = Node.new
    assert_equal nil, node.data
  end

end
