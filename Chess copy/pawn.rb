require_relative 'piece.rb'

class Pawn < Piece

  def initialize
    super(color, board, pos)
  end

  def symbol
    symbol = ♙
  end

  def moves

  end

end