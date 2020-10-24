# frozen_string_literal: true

# Create a board to play on
class Board
  def initialize
    @board = Array.new(3) { Array.new(3) }
  end

  def render
    puts
    @board.each do |row|
      row.each do |cell|
        cell.nil? ? print('-') : print(cell.to_s)
      end
      puts
    end
    puts
  end
end
