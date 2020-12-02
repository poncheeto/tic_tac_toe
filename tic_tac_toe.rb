
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
      @current_player.get_coordinates

      # break loop IF game is over
      break if check_game_over

      # switch players
      switch_players
    end

  end

  # check_game_over
  def check_game_over
    # check_victory
    # check_draw
    check_victory || check_draw
  end

  # check_victory
  def check_victory
    # IF board says current player's piece has a winning_combo?
    if @board.winning_combo?(@current_player.piece)
      # display victory message
      puts "Congratulations #{@current_player.name}, you win!"
      true
    else
      false
    end
  end

  # check_draw
  def check_draw
    # If board says it's filled
    if @board.full?
      # display a draw message
      puts "Bummer, you've drawn..."
      true
    else
      false
    end
  end

  # switch_players
  def switch_players
    # PlayerX >> PlayerO or vice versa
    if @current_player == @player_x
      @current_player = @player_y
    else
      @current_player = @player_x
    end
  end

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
      if validate_coordinates_format(coords)
        # IF piece can be placed on board
        if @board.add_piece(coords, @piece)
          # break loop
          break
        end
      end
    end
  end

  # ask_for_coordinates
  def ask_for_coordinates
    # Display message asking for coordinates
    puts "#{@name}(#{@piece}), enter your coordinates in the form x,y:"
    # pull coordinates from command line
    gets.strip.split(",").map(&:to_i)
  end

  # validate_coordinates_format
  def validate_coordinates_format(coords)
    # UNLESS coordinates are in proper format
    if coords.is_a?(Array) && coords.size == 2
      true
    else
    # display error message
      puts "Your coordinates are in the improper format!"
    end
  end

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
  def add_piece(coords, piece)
    # IF piece_location_valid?
    if piece_location_valid?(coords)
      # place piece
      @board[coords[0]][coords[1]] = piece
    true
    else
      false
    end
  end

  # piece_location_valid?
  def piece_location_valid?(coords)
    # is placement within_valid_coordinates?
    if within_valid_coordinates?(coords)
    # are the piece coordinates_available?
    coordinates_available?(coords)
    end
  end

  # within_valid_coordinates?
  def within_valid_coordinates?(coords)
    # UNLESS piece coords are in the acceptible range
    if (0..2).include?(coords[0]) && (0..2).include?(coords[1])
      true
    else
      # display error message
      puts "Piece coordinates are out of bounds"
    end
  end

  # coordinates_available?
  def coordinates_available?(coords)
    # UNLESS piece coords are not occupied
    if @board[coords[0]][coords[1]].nil?
      true
    else
      # display error message
      puts "There is already a piece there!"
    end
  end

  # winning_combo?
  def winning_combo?(piece)
    # is there a winning_diagonal?
    # or winning_vertical?
    # or winning_horizontal? for that piece?
      winning_diagonal?(piece) || winning_horizontal?(piece) || winning_vertical?(piece)
  end

  # winning_diagonal?
  def winning_diagonal?(piece)
    # check if specified piece has a triplet across diagonals
    diagonals.any? do |diag|
      diag.all?{ |cell| cell == piece }
    end
  end
  
  # winning_vertical?
  def winning_vertical?(piece)
    # check if specified piece has a triplet across verticals
    verticals.any? do |vert|
      vert.all?{ |cell| cell == piece }
    end
  end
  
  # winning_horizontal?
  def winning_horizontal?(piece)
    # check if specified piece has a triplet across horizontals
    horizontals.any? do |horz|
      horz.all?{ |cell| cell == piece }
    end
  end

  # diagonals
  def diagonals
    # returns the diagonal pieces
    [[ @board[0][0],@board[1][1],@board[2][2] ],[ @board[2][0],@board[1][1],@board[0][2] ]]
  end

  # verticals
  def verticals
    # returns the vertical pieces
    @board
  end

  # horizontals
  def horizontals
    # returns the horizontal pieces
    horizontals = []
    3.times do |i|
      horizontals << [@board[0][i],@board[1][i,@board[2][i]]
    end
    horizontals
  end

  # full?
  def full?
    # does every square contain a piece?
    @board.all? do |row|
      row.non?(&:nil?)
    end
  end

end

t = TicTacToe.new
t.play

  