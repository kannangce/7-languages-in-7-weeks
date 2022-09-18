class Tree
  attr_accessor :children, :node_name

  def initialize(source = {})
    raise "The given source is empty" if source == nil || source.keys == nil
    raise "The given source has multiple keys. Don't know how to initialize that." if source.keys.length > 1

    source.each { |k, v|
      @node_name = k
      @children = v.map { |inner_k, inner_v| Tree.new({inner_k => inner_v}) }
    }
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit(&block)
    block.call(@node_name)
  end
end

tree = Tree.new({ 'grandpa' => { 'dad' => { 'child 1' => {}, 'child 2' => {} }, 'uncle' => { 'child 3' => {}, 'child 4' => {} } } })
tree.visit_all {|a| puts a}
# prints names of all the nodes, in a depth first manner