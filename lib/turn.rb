
def display_board(board)
#board output
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#coverts a user's place on the board to the index integer
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end


# defined valid_move
def valid_move?(board, index)

  def position_taken?(array, ind)

if array[ind] == " " || array[ind] == ""  || array[ind] == nil

return false

else

return true

end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def on_board?(num)

if num.between?(0,8) == true

return true

else

return false

  end
end

# redefined position taken ffrom the users

if (position_taken?(board, index)) == false && (on_board?(index)== true )

return true

else

return false

end

end

#Takes a users num and the board, and places the X or O char in that position
def move(board, index, character = "X")
  board[index] = character
  return board
end

#Asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
