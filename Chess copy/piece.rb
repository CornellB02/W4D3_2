

class Piece 

  def initialize(symbol, board, pos)
    @color = symbol
    @board = board
    @pos = pos  #array
  end

  def empty?(position)
    return true if @board.[](position) == Nullpiece
    false
  end

  def to_s
    @color.to_s 
  end

  def valid_moves
    valid_moves #based off of move into check
  end

  def pos=(val)
    board[pos] = value
  end

  def symbol
    symbol
  end

  private
  def move_into_check?(end_pos)
    #can it move there, is it checkmate

  end

end


