module Stepable

  def moves
    #return a collection of positions it can move to
    #create an array to collect moves
    #iterate through each of the pieces possible move_diffs
    #for each move_diffs, increment the piece's position to generate new position
    #add the new position to the moves array if:
       #on the board and empty
       #on the board and contain a piece of the opposite color

    #return final array of moves

    


   
  end


  private
  def move_diffs
    raise NotImplementedError
  end

end