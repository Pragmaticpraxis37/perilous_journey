require 'node'
require 'linked_list'


describe LinkedList do
  it 'should exist and have attributes' do
    list = LinkedList.new

    expect(list.class).to eq(LinkedList)
    expect(list.head).to eq(nil)
  end

  it 'can have one thing appended to it' do
    list = LinkedList.new

    list.append('West')

    expect(list.head.class).to eq(Node)
    expect(list.head.next_node).to eq(nil)
    expect(list.head.surname).to eq('West')
  end

  it 'can have multiple things appended to it' do
    list = LinkedList.new

    list.append('Rhodes')

    expect(list.head.class).to eq(Node)
    expect(list.head.next_node).to eq(nil)
    expect(list.head.surname).to eq('Rhodes')

    list.append('Hardy')

    expect(list.head.class).to eq(Node)
    expect(list.head.next_node.surname).to eq('Hardy')
    expect(list.head.next_node.next_node).to eq(nil)
  end

  it 'can count nodes inside of it' do
    list = LinkedList.new

    list.append('Rhodes')
    list.append('Hardy')

    expect(list.count).to eq(2)
  end

  it 'can display the name of the families in the list' do
    list = LinkedList.new

    list.append('West')

    expect(list.to_string).to eq('The West family')
  end

  it 'can display all names of the families in the list' do
    list = LinkedList.new

    list.append('Rhodes')
    list.append('Hardy')

    expect(list.to_string).to eq('The Rhodes family, followed by the Hardy family')
  end

  it 'can prepend a node to the list' do
    list = LinkedList.new

    list.append('Brooks')
    list.append('Henderson')

    list.prepend('McKinney')

    expect(list.to_string).to eq("The McKinney family, followed by the Brooks family, followed by the Henderson family")
    expect(list.count).to eq(3)
  end

  it 'can insert nodes into the list' do
    list = LinkedList.new

    list.append('Brooks')
    list.append('Henderson')

    list.prepend('McKinney')

    list.insert(1, 'Lawson')

    expect(list.to_string).to eq("The McKinney family, followed by the Lawson family, followed by the Brooks family, followed by the Henderson family")
    expect(list.count).to eq(4)
  end

  it 'can find a specific number of elements starting at a specific position' do
    list = LinkedList.new

    list.append('McKinney')
    list.append('Lawson')
    list.append('Brooks')
    list.append('Henderson')

    # require "pry"; binding.pry

    # expect(list.find).to eq("The Brooks family")
  end
end
