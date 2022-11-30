module Slidable 

  def horizontal_dirs
    @HVD
  end

  def diagonal_dirs
    @DD
  end

  def moves
    
  end
  
  
  
  private
  HVD: [[0,1], [1,0], [0,-1], [-1,0]]
  DD: [[1,1], [-1,-1], [1,-1], [-1,1]]

  def move_dirs
    diagonal_dirs + horizontal_dirs
  end

end