VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first.start_with?("r") && second.start_with?('sc')) ||
    (first.start_with?("p") && second.start_with?('r')) ||
    (first.start_with?("sc") && second.start_with?('p')) ||
    (first.start_with?("r") && second.start_with?('l')) ||
    (first.start_with?("l") && second.start_with?('sp')) ||
    (first.start_with?("sp") && second.start_with?('sc')) ||
    (first.start_with?("sc") && second.start_with?('l')) ||
    (first.start_with?("l") && second.start_with?('p')) ||
    (first.start_with?("p") && second.start_with?('sp')) ||
    (first.start_with?("sp") && second.start_with?('r'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")

  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("It's a tie!")
  end
end

def add_score(player, computer)
  if win?(player, computer)
    1
  elsif win?(computer, player)
    2
  else
    3
  end
end

loop do
  computer_score = 0
  player_score = 0
  choice = ''
  loop do
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      if choice == 'sp'
        choice = 'spock'
      elsif choice == 'l'
        choice = 'lizard'
      elsif choice == 'r'
        choice = 'rock'
      elsif choice == 'p'
        choice = 'paper'
      elsif choice == 'sc'
        choice = 'scissors'
      end

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample
    puts "You chose #{choice}; Computer chose #{computer_choice}"
    display_results(choice, computer_choice)

    if add_score(choice, computer_choice) == 1
      player_score += 1
    elsif add_score(choice, computer_choice) == 2
      computer_score += 1
    end

    prompt("Computer: #{computer_score}")
    prompt("Player: #{player_score}")

    if player_score > 4
      prompt("------------------------")
      prompt("You beat the computer!!!")
      prompt("------------------------")
      break
    elsif computer_score > 4
      prompt("--------------------------------------------------")
      prompt("That darn computer is good! Better luck next time.")
      prompt("--------------------------------------------------")
      break
    else
    end
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
