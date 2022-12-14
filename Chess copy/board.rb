require_relative "piece.rb"
require_relative "queen.rb"
require_relative "king.rb"
require_relative "bishop.rb"
require_relative "knight.rb"
require_relative "rook.rb"
require_relative "rook.rb"
require_relative "nullpiece.rb"
require 'colorize'

class Board

  attr_accessor :board

  def initialize
    @board = Array.new(8) {Array.new(8) {Nullpiece.instance}}
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @board[row][col] = val
  end

  def move_piece(color, start_pos, end_pos)
    if @board[start_pos].empty?
      raise "there is no piece to move"
   elsif !@board[end_pos].move_into_check?(end_pos) #acc to chess rules
      raise "cannot move there"
   else
      piece = self[start_pos]
      @board[start_pos].empty?
      @board[end_pos] = piece
    end
    #raise error if moves off board(calls valid_pos)
  end

  def valid_pos
    #if it is on the board
  end

 def self.populate
  #row 1 and row 6 are pawns
  self.each.with_index do |row, idx|
    if idx == 1 || idx == 7 || idx == 0 || idx == 6
      row.each.with_index do |spot, idx1|
        self[idx][idx1] = Piece.new()
      end
    end
  end
 end

  def print
    puts
    @board.each.with_index do |row, i|
      puts "#{i} #{row.map {|ele| ele.is_a?(Nullpiece) ? 'Null' : 'Piec'.blue}.join(' ')}"
    end
    puts 
    ''
  end
end