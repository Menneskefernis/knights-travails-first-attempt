require_relative 'game_board'
require_relative 'move'

class Tree
  attr_accessor :start
  attr_reader :board

  def initialize
    @board = GameBoard.new
    @start = Move.new(4, 4)
  end

  def build_tree
    operators = ["+", "-"]
    
    operators.each_with_index do |op, i|
      x_coord = start.x.send(op, 2)
      
      start.moves << Move.new(x_coord, start.y.send(op, 1))
      start.moves << Move.new(start.x.send(op, 1), start.y.send(op, 2))
    end
    
    puts start.moves

    puts start.moves[0].x
    puts start.moves[0].y
    puts ""
    puts start.moves[1].x
    puts start.moves[1].y
    puts ""
    puts start.moves[2].x
    puts start.moves[2].y
    puts ""
    puts start.moves[3].x
    puts start.moves[3].y
    #puts ""
    #puts start.moves[4].x
    #puts start.moves[4].y
    #puts ""
    #puts start.moves[5].x
    #puts start.moves[5].y
    #puts ""
    #puts start.moves[6].x
    #puts start.moves[6].y
    #puts ""
    #puts start.moves[7].x
    #puts start.moves[7].y
  end
end