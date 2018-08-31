
ef display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts 'display board'
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


# def turn
# puts " please enter a number "
# user_input = gets.chomp
# user_input.input_to_index
# if
# end
