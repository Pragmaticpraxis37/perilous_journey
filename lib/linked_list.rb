require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize(node=nil)
    @head = nil
  end

  def append(name)
    object = @head
    new_node = Node.new(name)
    if object == nil
      @head = new_node
    else
      while object.next_node != nil
        object = object.next_node
      end
      object.next_node = new_node
    end
  end

  def count
    total = 0
    object = head
    while object != nil
      total += 1
      object = object.next_node
    end
    total
  end

  def to_string
    object = head
    while object != nil do
      if object == head
        string = "The #{object.surname} family"
      else
        string = string + ", followed by the #{object.surname} family"
      end
      object = object.next_node
    end
    string
  end

  def prepend(name)
    detached_nodes = self.head
    new_head = Node.new(name)
    self.head = new_head
    new_head.next_node = detached_nodes
  end

  def insert(position, name)
    object = head
    position = position - 1
    new_node = Node.new(name)
    count = 0

    while count <= position do
      if count == position
        tail = object.next_node
        object.next_node = new_node
        object.next_node.next_node = tail
        return LinkedList.new(object)
      end
      object = object.next_node
      count += 1
    end
  end
end
