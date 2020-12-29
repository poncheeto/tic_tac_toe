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
class Player
  # Enter coordinates
  def self.choose_move
    puts 'Player 1, choose your move'
  end
end
  # Assign player pieces
  # Determine who goes first
  
  # Check if spot is occupied
  # Add piece
  # Check for winning combo

Game.start(board)
Player.choose_move
