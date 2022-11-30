require_relative "piece.rb"

class Nullpiece < Piece

   def initialize(color, board, pos)
    super("_", board, pos)
  end

end