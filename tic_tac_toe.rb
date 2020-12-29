#  Game class 
class Game
  # Start game
  def self.start(board)
  board.render_board
  end
  # Check for victory
  # Declare winner
end

# Board class
class Board
  # Create board
  def render_board
    puts '   |   |   '
    puts '---+---+---'
    puts '   |   |   '
    puts '---+---+---'
    puts '   |   |   '
  end
end
board = Board.new

# Player class
  # Assign player pieces
  # Determine who goes first
  # Enter coordinates
  # Check if spot is occupied
  # Add piece
  # Check for winning combo

Game.start(board)