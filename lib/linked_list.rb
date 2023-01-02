require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return self if @head.nil? || @head.next_node.nil?
    
    node = @head
    @head = @tail
    @tail = node

    until node.nil?
      prev = node.next_node
      node.next_node = node.prev_node
      node.prev_node = prev
      node = prev
    end
    self
  end
end
