WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board,index,token)
  board[index]=token
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    return true
  end
end

def valid_move?(board,input)
  !position_taken?(board,input) && input.between?(0,8)
end

def turn(board)
  puts "What is your move?"
  input = input_to_index(gets.strip)
  if valid_move?(board,input)
    move(board,input,current_player(board))
    display_board(board)
  else
    turn(board)
  end
end

def turn_count(board)
  counter = 0
  board.each do |i|
    if i == "X" || i == "O"
      counter +=1
    end
  counter
end

def current_player(board)
  
end
