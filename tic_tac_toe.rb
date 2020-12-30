
board = ['', '', '', '', '', '', '', '', '', '']
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

def make_move(board, index, player)
  board[index] = player
end

