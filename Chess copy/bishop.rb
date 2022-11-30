require_relative 'piece.rb'

class Bishop < Piece
include Slideable

  def initialize(color, board, pos)
    super
  end

  def symbol
    '♝'.colorize(color)
  end

  protected
  def move_dir
    diagonal_dirs
  end

end