require "./node.rb"
require "pry"

class LinkedList
  #head should be a variable
  #tail should be method
  attr_reader :head, :string

  def initialize
    @string = []
  end

  def append(data)
    if @head != nil
      # head is not nil, it has been set already
      # point a variable 'current_node' to head
        current_node = @head
      # while current_node's next_node is not nil
      while current_node.next_node != nil
        # go to the next node, and set 'current_node' to be that next Node
        current_node = current_node.next_node
      end
      # once you find a node whose next_node IS nil
      # create a new node from the data, and set the current node's next node to your new node
        current_node.next_node = Node.new(data)
        @string << data
    else
      # head is nil, it hasn't been set
      @head = Node.new(data)
      @string << data
    end
    data
  end

  def count
    if @head == nil
      count = 0
    else
      current_node = @head
      count = 1
    until current_node.next_node == nil
      count += 1
      current_node = current_node.next_node
    end
  end
    count
end

  def to_string
    @string.join(" ")
  end

  def prepend
  end

  def insert
  end

end
