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

  def prepend(new_node)
    @string.unshift(new_node)
    head = Node.new(new_node)
    head.next_node = @head
    @head = head
end

  def insert(position, data)
    # @string.insert(position, data)
    if @head.nil?
      @head = Node.new(data)
    elsif position == 0
      prepend(data)
    else
    counter = 0
    current_head = @head
    new_node = Node.new(data)
    until counter == position -1
      counter += 1
      current_head = current_head.next_node
    end
    node = current_head.next_node
    current_head.next_node = new_node
    current_head.next_node.next_node = node
    @string.insert(position, data)
  end
end

def find_tail
  current_node = @head
  until current_node.next_node.nil?
    current_node = current_node.next_node
  end
  current_node
end

def find(position, element_count)
end

end
