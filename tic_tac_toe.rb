
# Set up game initially [TicTacToe]
  # Create the board [Board]
  # Create 2 players [Player]
# Start game loop [TicTacToe]
  # Render board [Board]
  # Ask for player's coordinates [Player]
  # If game ends [TicTacToe]
    # Display victory/draw message
    # Stop loop
  # Else
    # Switch to nest player and keep looping [TicTacToe]

#############################################################

# Controls gameplay
class TicTacToe
  # initialize
  def initialize
    # set up board
    @board = Board.new
    # set up players
    @player_x = Player.new("Player 1", :x, @board)
    @player_y = Player.new("Player 2", :y, @board)

    # assign starting player
    @current_player = @player_x
  end

  # play
  def play

    # loop infinitely
    loop do
      # call the board rendering method
      @board.render
      # ask for coordinates from current player
      # break loop IF game is over
      # switch players

  # check_game_over
    # check_victory
    # check_draw

  # check_victory
    # IF board says current player's piece has a winning_combo?
      # display victory message

  # check_draw
    # If board says it's filled
      # display a draw message

  # switch_players
    # PlayerX >> PlayerO or vice versa

end

# Manages all player-related functionality
class Player
  attr_accessor :name, :piece

  # initialize
  def initialize(name = "Mystery_Player", piece, board)
    # Set marker type
    raise "Piece must be a Symbol!" unless piece.is_a?(Symbol)
    @name = name
    @piece = piece
    @board = board
  end

  # get_coordinates
  def get_coordinates
    # loop infinitely
    loop do
      # ask_for_coordinates
      coords = ask_for_coordinates

      # IF validate_coordinates_format is true
        # IF piece can be placed on board
          # break loop

  # ask_for_coordinates
  def ask_for_coordinates
    # Display message asking for coordinates
    puts "#{@name}(#{@piece}), enter your coordinates in the form x,y:"
    # pull coordinates from command line

  # validate_coordinates_format
    # UNLESS coordinates are in proper format
    # display error message

end

# Maintains game board state
class Board
  # initialize board
  def initialize
    # set up blank data structure
    @board = Array.new(3){Array.new(3)}
  end

  # render
  def render
    puts
    # loop through data stucture
    @board.each do |row|
      row.each do |cell|
      # display an existing marker if any, else blank
      cell.nil? ? print("-") : print(cell.to_s)
      end
      puts
    end
    puts

  end

  # add_piece
    # IF piece_location_valid?
      # place piece
    # ELSE
      # display error message

  # pice_location_valid?
    # is placement within_valid_coordinates?
    # are the piece coordinates_available?

  # within_valid_coordinates?
    # UNLESS piece coords are in the acceptible range
      # display error message

  # coordinates_available?
    # UNLESS piece coords are not occupied
      # display error message

  # winning_combo?
    # is there a winning_diagonal?
    # or winning_vertical?
    # or winning_horizontal? for that piece?

  # winning_diagonal?
    # check if specified piece has a triplet across diagonals

  # winning_vertical?
    # check if specified piece has a triplet across verticals
  
  # winning_horizontal?
    # check if specified piece has a triplet across horizontals

  # diagonals
    # returns the diagonal pieces

  # verticals
    # returns the vertical pieces

  # horizontals
    # returns the horizontal pieces

  # full?
    # does every square contain a piece?
end

  