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
    [
    [-2, -1],
    [-2,  1],
    [-1, -2],
    [-1,  2],
    [ 1, -2],
    [ 1,  2],
    [ 2, -1],
    [ 2,  1]
  ].freeze
  end

end