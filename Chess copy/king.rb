require_relative 'piece.rb'
require_relative 'stepable'

class King < Piece
  include Stepable

  def initialize(color, board, pos)
    super
  end

  def symbol
    ♚.colorize(color)
  end

  protected
  def move_diffs
    #return an array of diffs representing where a King can step to
    [[0,1], [1,0], [0,-1], [-1,0], [1,1], [-1,-1], [1,-1], [-1,1]].freeze
  end

end