class Move
  attr_accessor :x, :y, :moves
  def initialize(x, y)
    @x = x
    @y = y
    @moves = []
  end

  def to_s
    puts "[#{self.x}, #{self.y}]"
  end
end