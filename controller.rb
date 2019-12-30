require_relative 'tree'

tree = Tree.new
puts tree.build_tree.moves[0].moves[0].moves.map { |move| move.to_s }