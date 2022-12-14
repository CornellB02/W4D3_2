require_relative 'piece.rb'
require_relative "slideable"


class Rook < Piece
include Slideable

  def initialize(color, board, pos)
    super
  end

  def symbol
   '♜'.colorize(color)
  end

  protected

  def move_dirs
    horizontal_dirs
  end

end