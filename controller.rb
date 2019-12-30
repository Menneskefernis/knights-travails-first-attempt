require_relative 'tree'

tree = Tree.new
puts tree.build_tree.moves.map { |move| move.to_s }