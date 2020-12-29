#  Game class 
class Game
  # Start game
  def initialize()
    puts "Welcome to TicTacToe!"
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
# Check for winning combo
# Check if spot is occupied
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
  # Add piece

Game.new