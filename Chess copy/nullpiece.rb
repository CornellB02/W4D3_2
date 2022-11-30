require_relative "piece.rb"
require "singleton"

class Nullpiece < Piece
  include Singleton
   def initialize
  
  end

  def empty?
    true
  end

end