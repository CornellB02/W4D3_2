module Slideable 


  Horizontal_dirs = [[0,1], [1,0], [0,-1], [-1,0]].freeze
  Diagonal_dirs = [[1,1], [-1,-1], [1,-1], [-1,1]].freeze
  #coded these variables because the pieces share movement behavior
  #whereas for stepable we can just localized the behavior

  def horizontal_dirs
    Horizontal_dirs
  end

  def diagonal_dirs
    Diagonal_dirs
  end

  def moves

    self.move_dirs.each do |step| #move_dir [0,1]
      row, col = @pos  #current piece position

      all_moves = []
      until row < 0 || row > 7 || col < 0 || col > 7        #grow unblocked direction
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
  

 private
  def move_dirs
    raise NotImplementedError.new("move_dirs is not implemented in subclass")
    #this only executes if we forget to implement it in theSubClass
  end


end