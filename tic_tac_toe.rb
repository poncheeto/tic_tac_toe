
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
    @player_x = Player.new("Player 1", :)
    # assign starting player

  # play
    # loop infinitely
      # call the board rendering method
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
  # initialize
    # Set marker type

  # get_coordinates
    # loop infinitely
      # ask_for_coordinates
      # IF validate_coordinates_format is true
        # IF piece can be placed on board
          # break loop

  # ask_for_coordinates
    # Display message asking for coordinates
    # pull coordinates from command line

  # validate_coordinates_format
    # UNLESS coordinates are in proper format
    # display error message

end

# Maintains game board state
class Board
  # initialize board
    # set up blank data structure

  # render
    # loop through data stucture
      # display an existing marker if any, else blank

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

  