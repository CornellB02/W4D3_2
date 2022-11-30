require_relative 'piece.rb'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def initialize(color, board, pos)
    super
  end

  def symbol
    ♞.colorize(color)
  end

  protected
  def move_diffs

  end

end