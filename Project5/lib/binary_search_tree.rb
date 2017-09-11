# There are many ways to implement these methods, feel free to add arguments
# to methods as you see fit, or to create helper methods.
require 'bst_node.rb'

class BinarySearchTree
  attr_accessor :root
  def initialize
    @root = nil
  end

  def insert(value)
    if @root.nil?
      @root = BSTNode.new(value)
    else
      recursive_insert(@root, value)
    end
  end

  def recursive_insert(node, value)
    return BSTNode.new(value) unless node
    if value <= node.value
      node.left = recursive_insert(node.left, value)
    else
      node.right = recursive_insert(node.right, value)
    end
    node
  end

  def find(value, tree_node = @root)
    return nil if tree_node.nil?
    return tree_node if tree_node.value == value

    if value <= tree_node.value
      find(value, tree_node.left)
    else
      find(value, tree_node.right)
    end

  end

  def delete(value)
    if value == @root.value
      @root = nil
    else
      recursive_delete(@root, value)
    end
  end

  def recursive_delete(node, value)
    return nil if node.nil?
    if value < node.value
      node.right = recursive_delete(node.right, value)
    elsif value > node.value
      node.left = recursive_delete(node.left, value)
    else
      return node.left unless node.right
      return node.right unless node.left
      new_node = node
      node = maximum(new_node.left)
      node.left = delete_max(new_node.left)
      node.right = new_node.right
    end
    node
  end


  def delete_max(node)
    return node.left unless node.right
    node.right = delete_max(node.right)
    node
  end
  # helper method for #delete:
  def maximum(tree_node = @root)
    return tree_node unless tree_node.right
    maximum(tree_node.right)
  end

  def depth(tree_node = @root)
    return -1 unless tree_node
    1 + [depth(tree_node.left), depth(tree_node.right)].max
  end

  def is_balanced?(tree_node = @root)
    depth(tree_node.right) == depth(tree_node.left)
  end

  def in_order_traversal(tree_node = @root, arr = [])
    return [] unless tree_node


    arr.concat(in_order_traversal(tree_node.left)) if tree_node.left
    arr << tree_node.value
    arr.concat(in_order_traversal(tree_node.right)) if tree_node.right

    p arr
  end

  def pre_order_traversal(tree_node = @root, arr = [])
    return [] unless tree_node

    arr << tree_node.value

    arr.concat(in_order_traversal(tree_node.left)) if tree_node.left
    arr.concat(in_order_traversal(tree_node.right)) if tree_node.right

    p arr
  end

  def post_order_traversal(tree_node = @root, arr = [])
    return [] unless tree_node


    arr.concat(in_order_traversal(tree_node.left)) if tree_node.left
    arr.concat(in_order_traversal(tree_node.right)) if tree_node.right
    arr << tree_node.value

    p arr
  end


  private
  # optional helper methods go here:



end
