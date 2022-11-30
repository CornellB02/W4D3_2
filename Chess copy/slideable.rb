module Slideable 


  HVD = [[0,1], [1,0], [0,-1], [-1,0]].freeze
  DD = [[1,1], [-1,-1], [1,-1], [-1,1]].freeze
  
  def horizontal_dirs
    HVD
  end

  def diagonal_dirs
    DD
  end

  def moves

    self.move_dirs.each do |step| #move_dir [0,1]
      row, col = @pos  #current piece position

      all_moves = []
      until row < 0 || row > 7 || col < 0 || col > 7
        #want to add step to row and col
        step_row = row + step[0]
        step_col = col + step[1]
        new_pos = [step_row, step_col]

        break if !@board[new_pos].empty?(new_pos)
        all_moves << [new_pos]
      end
    end
    all_moves
  end
  
 
 
  def move_dirs
    
  end

end