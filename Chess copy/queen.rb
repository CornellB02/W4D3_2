require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
include Slidable

  def initialize(color, board, pos)
    super
  end

  def symbol
    symbol = ♕
  end

  def moves

  end

end