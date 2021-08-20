require 'node'

describe Node do
  it "should exist and have attributes" do
    node = Node.new('Burke')

    expect(node.class).to eq(Node)
    expect(node.next_node).to eq(nil)
    expect(node.surname).to eq('Burke')
  end
end
