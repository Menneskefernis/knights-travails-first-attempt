require_relative 'game_board'
require_relative 'move'

class Tree
  attr_accessor :start
  attr_reader :board

  def initialize
    @board = GameBoard.new
    @start = Move.new(4, 4)
  end

  def build_tree(node=start, counter=0, array=[])
    return if node.nil?
    #unless array.empty?
    #  return if array.max > 6
    #end
    #array << counter
    
    operators = [["+", "+"], ["-", "-"], ["-", "+"], ["+", "-"]]
    move1 = 1
    move2 = 2

    operators.each do |op|
      2.times do
        x_position = start.x.send(op[0], move1)
        y_position = start.y.send(op[1], move2)
        
        if (x_position <= board.columns && x_position > 0) &&
           (y_position <= board.rows && y_position > 0)
          node.moves << build_tree(Move.new(x_position, y_position))
        end
        x_move, y_move = y_move, x_move
      end
    end
    
    node
  end
end