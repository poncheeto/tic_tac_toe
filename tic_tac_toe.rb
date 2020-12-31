
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
# Create board
def render_board
  puts '   |   |   '
  puts '---+---+---'
  puts '   |   |   '
  puts '---+---+---'
  puts '   |   |   '
end

def computer_board(board)
  puts " #{board[0]}  | #{board[1]}  | #{board[2]} "
  puts '---+---+---'
  puts " #{board[3]}  | #{board[4]}  | #{board[5]} "
  puts '---+---+---'
  puts " #{board[6]}  | #{board[7]}  | #{board[8]} "
end

# Convert user input to match index of array
def input_to_index(user_input)
  user_input.to_i - 1
end

def make_move(board, index, first_player = 'X')
  board[index] = first_player
end

def position_taken?(board, index)
  if (board[index] == ' ') || (board[index] == '') || (board[index] == nil)
    return false
  else return true
  end
end

def validate_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  end
end

# Keep track of turns
def turn_count(board)
  counter = 0
  board.each do |spaces|
    if spaces == 'X' || spaces == 'O'
      counter += 1
    end
  end
  counter
end

# Determine current player
def current_player(board)
  turn_count(board) % 2 == 0 ? 'X' : 'O'
end

