class Move
  attr_accessor :x, :y, :moves
  def initialize(x, y)
    @x = x
    @y = y
    @moves = []
  end
end