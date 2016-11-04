class Node

  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end

  def add_right(value)
    @right = Node.new(value)
    @right
  end

  def add_left(value)
    @left = Node.new(value)
    @left
  end

end


a = Node.new(7)
b = a.add_left(3)
c = a.add_right(11)
d = b.add_left(1)
e = b.add_right(5)
f = c.add_left(10)
g = c.add_right(15)
h = e.add_left(4)

p "done making the tree!"




def is_good_node(node)
  if node.left && node.right
    node.left.value < node.value && node.right.value > node.value
  elsif node.left
    node.left.value < node.value
  elsif node.right
    node.right.value > node.value
  else
    true # occurs on a leaf node
  end
end



def is_bst(top_node)
  # base case - when we get to a node with no children
  # or when we find an invalid node
  if is_good_node(top_node)
    if top_node.left && top_node.right
      is_bst(top_node.left) && is_bst(top_node.right)
    elsif top_node.left
      is_bst(top_node.left)
    elsif top_node.right
      is_bst(top_node.right)
    else
      return true
    end
  else
    return false
  end
end


p is_bst(a)








