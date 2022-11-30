require_relative 'piece.rb'
require_relative "slidable"

class Rook < Piece
include Slidable

  def initialize
    super(color, board, pos)
  end

  def symbol
    symbol = ♜
  end

  def move_dirs
    horizontal_dirs
  end

end