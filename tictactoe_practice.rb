# tictactoe_practice.rb

# draw the board
# assign one player to "X"
# assign the other player to "O"

# begin the game
# player1 picks the first square and makes their mark
# player2 chooses a square and makes their mark
# this is repeated until a the winning condition is met

# games ends when winning conditions are met

def initialize_board
	b = {}
	(1..9).each {|position| b[position] = ' '}
	b
end

def draw_board(b)
	system 'clear'
	puts " #{b[1]} | #{b[2]} | #{b[3]} "
	puts "-----------"
	puts " #{b[4]} | #{b[5]} | #{b[6]} "
	puts "-----------"
	puts " #{b[7]} | #{b[8]} | #{b[9]} "
end

def empty_positions(b)
	b.select {|k, v| v == ' '}.keys
end

def player_picks_square(b)
	puts "Pick a square (1 - 9):"
	position = gets.chomp.to_i 
	b[position] = 'X'
end

def computer_picks_square(b)
	position = empty_positions(b).sample
	b[position] = 'O'
end

def check_winner(b)
	winning_lines = [[1,2,3], [4,5,6], [7,8,9], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
	winning_lines.each do |line|
		if b[line[0]] == 'X' && b[line[1]] == 'X' && b[line[2]] == 'X'
			return 'Player'
		elsif b[line[0]] == 'O' && b[line[1]] == 'O' && b[line[2]] == 'O'
			return 'Computer'
		else
			return nil
		end
	end
end

board = initialize_board
draw_board(board)

begin
	player_picks_square(board)
	computer_picks_square(board)
	draw_board(board)
	winner = check_winner(board)
end until winner || empty_positions(board).empty? && winning_lines?

if winner
	puts "#{winner} won!"
else
	puts "It's a tie!"
end
