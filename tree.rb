require_relative 'game_board'
require_relative 'move'

class Tree
  attr_accessor :start
  attr_reader :board

  def initialize
    @board = GameBoard.new
    @start = Move.new(4, 4)
  end

  def build_tree(node=start, counter=0)
    return if counter > 6

    operators = [["+", "+"], ["-", "-"], ["-", "+"], ["+", "-"]]
    x_move = 1
    y_move = 2

    operators.each do |op|
      2.times do
        x_position = node.x.send(op[0], x_move)
        y_position = node.y.send(op[1], y_move)
        
        if (x_position <= board.columns && x_position > 0) &&
           (y_position <= board.rows && y_position > 0)
          node.moves << build_tree(Move.new(x_position, y_position), counter + 1)
        end
        x_move, y_move = y_move, x_move
      end
    end

    node
  end
end