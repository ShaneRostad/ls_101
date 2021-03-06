require "pry"

computer_score = 0
player_score = 0

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

FIRST_MOVE = ''

def joinor(array)
  if array.size > 1
  last_item = array.pop
  return "#{array.join(', ')} or #{last_item}"
  else
    return "#{array.join(' ')}"
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
    system 'clear'
    puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
    puts ""
    puts " #{brd[1]} | #{brd[2]} | #{brd[3]}"
    puts "---+---+---"
    puts " #{brd[4]} | #{brd[5]} | #{brd[6]}"
    puts "---+---+---"
    puts " #{brd[7]} | #{brd[8]} | #{brd[9]}"
    puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board)
  if board.values_at(*line).count(PLAYER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def make_best_move(line, board)
  if board.values_at(*line).count(COMPUTER_MARKER) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = make_best_move(line, brd)
    break if square
  end

  WINNING_LINES.each do |line|
    break if square
    square = find_at_risk_square(line, brd)
    break if square
  end

  if !square
    if brd[5] == INITIAL_MARKER
      brd[5] = COMPUTER_MARKER
    else
    square = empty_squares(brd).sample
  end
end

  brd[square] = COMPUTER_MARKER
end




def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end
=begin
def smart_computer_move(brd)
  WINNING_LINES.each do |line|
    if (brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == ' ')
       return brd[line[2]] = COMPUTER_MARKER
    elsif (brd[line[1]] == PLAYER_MARKER &&
           brd[line[2]] == PLAYER_MARKER &&
           brd[line[2]] == ' ')
           return brd[line[3]] = COMPTUER_MARKER
         else
           square = empty_squares(brd).sample
           return brd[square] = COMPUTER_MARKER
    end
  end
end
=end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
       brd[line[1]] == COMPUTER_MARKER &&
       brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
end

prompt "Who goes first? Player or Computer"
answer = gets.chomp
if answer.downcase.start_with?('p')
  FIRST_MOVE = 'Player'
else
  FIRST_MOVE = 'Computer'
end


loop do
  board = initialize_board

  loop do
    if FIRST_MOVE == 'Player'
      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    elsif FIRST_MOVE == 'Computer'

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      display_board(board)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board)
  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
    if detect_winner(board) == 'Player'
      player_score += 1
    elsif detect_winner(board) == 'Computer'
      computer_score += 1
    end
  else
    prompt "It's a tie!"
  end

  prompt "Player: #{player_score}"
  prompt "Computer: #{computer_score}"
  prompt "Ready to play next round? type 'yes' (to quit, type quit)"
  answer = gets.chomp
  break if player_score == 5 || computer_score == 5
  break if answer.downcase.start_with?('q')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
