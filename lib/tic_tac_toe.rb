require 'pry'

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, char="X")
  array_pos = position.to_i - 1
  if board[array_pos] == " "
    board[array_pos]=char
  end
end

def position_taken?(board, position)
  !(board[position] == " ")
end

def valid_move?(board, position)
  position.match(/^\d+$/) && board[position.to_i - 1] == " "
end
