require "./node.rb"

class LinkedList
  #head should be a variable
  #tail should be method

def initialize
  @head
  @count = 0
end

  def head
    @head
end

  def append(append)
    @head = Node.new(append)
    append
  end

  def count
    @count += 1
end

  def to_string
end

end
