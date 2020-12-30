#  Game class
class Game
  # Start game
  def initialize()
    puts "Welcome to TicTacToe!"
  end
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

Game.new