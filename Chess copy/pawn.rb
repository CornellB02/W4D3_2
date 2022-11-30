require_relative 'piece.rb'

class Pawn < Piece

  attr_reader :color, :pos
  def initialize(color, board, pos)
    super
  end

  def symbol
    symbol = ♙
  end

  def move
    move_diffs
  end
 

  protected
  
  def move_diffs
    if @pos[0] == 1 && @color == :white
      return [[0,2], [0,1]]
    elsif @pos[0] == 6 && @color == :black
      return [[0,2], [0,1]]
    #eats diagonally, moves one step forward if nothing blocking
    elsif self.can_eat?

     return [[0,1], [-1,1], [1,1]]
    else
      return [[0,1]]
   end
    
  end

  def can_eat?
    #take the position of self
    #compare position to the diagonal to see if it can eat

  end

end