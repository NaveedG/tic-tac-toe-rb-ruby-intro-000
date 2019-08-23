WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2] } "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5] } "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(board, position, token)
  board[position] = token
end

def position_taken?(board, position)
  return false if board[position] == " " || board[position] == "" || board[position] == nil
  return true if !(board[position] == " " || board[position] == "" || board[position] == nil)
end

def valid_move?(board, position)
  return true if position.between?(0, 8) && !position_taken?(board, position)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, position)
    move(board, position, token)
    display_board(board)
  else
    turn(board)
  end

end
