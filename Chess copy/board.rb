require_relative "piece.rb"
require_relative "queen.rb"
require_relative "king.rb"
require_relative "bishop.rb"
require_relative "knight.rb"
require_relative "rook.rb"
require_relative "rook.rb"
require_relative "nullpiece.rb"

class Board

  attr_accessor :board

  def initialize
    @board = Array.new(8) {Array.new(8) { Nullpiece.instance }}
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @board[row][col] = val
  end

  def move_piece(start_pos, end_pos)
    if @board[start_pos].is_a?(Nullpiece)
      raise "there is no piece to move"
   elsif !@board[end_pos].nil?            #acc to chess rules
      raise "cannot move there"
   else
      @board[start_pos].is_a?(Nullpiece)
      @board[end_pos] = piece?
    end
  end

 def self.populate
  #row 1 and row 6 are pawns
  @board.each.with_index do |row, idx|
    if idx == 1 || idx == 7 || idx == 0 || idx == 6
      row.each.with_index do |spot, idx1|
        @board[idx][idx1] = Piece.new()
      end
    end
  end
  
 end
end