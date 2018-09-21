DECK = {
  "hearts" => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'jack' => 10,
                'queen' => 10, 'king' => 10, 'ace' => 11 },
  "diamonds" => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                  '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'jack' => 10,
                  'queen' => 10, 'king' => 10, 'ace' => 11 },
  "spades" => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
                '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'jack' => 10,
                'queen' => 10, 'king' => 10, 'ace' => 11 },
  "clubs" => { '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
               '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'jack' => 10,
               'queen' => 10, 'king' => 10, 'ace' => 11 }

}

def deal_cards
  cards = [[], []]

  first_suit = DECK.to_a.sample[0]
  first_card = DECK[first_suit].keys.sample
  first_value = DECK[first_suit][first_card]

  cards[0] << "#{first_card} of #{first_suit}"
  cards[0] << first_value

  second_suit = DECK.to_a.sample[0]
  second_card = DECK[second_suit].keys.sample
  second_value = DECK[second_suit][second_card]

  cards[1] << "#{second_card} of #{second_suit}"
  cards[1] << second_value

  cards
end

def bust?(crds)
  crds_points = total(crds)
  if crds_points > 21
    true
  end
end

def win?(crds)
  crds_points = total(crds)
  if crds_points == 21
    true
  end
end

def total(crds)
  crds_points = 0
  crds_type = crds.map { |set| set[1] }

  crds.each do |set|
    crds_points += set[1]
  end

  crds_type.select { |type| type == "ace" }.count.times do
    crds_points -= 10 if crds_points > 21
  end

  crds_points
end

players_cards = deal_cards
puts "Your cards are: #{players_cards.map { |set| set[0] }}"
puts " "
dealers_cards = deal_cards
puts "the dealer has: #{dealers_cards[0][0]}"

# player's turn to hit or stay
loop do
  players_total = 0
  puts "Would you like to hit or stay"
  answer = gets.chomp

  if answer.downcase.start_with?('h')
    players_cards << deal_cards[0]
    puts "Your cards are now #{players_cards.map { |set| set[0] }}"

    puts 'bust! Better luck next time!' if bust?(players_cards)
    break if bust?(players_cards)

    puts 'You win! TWENTY ONE BABYYY' if win?(players_cards)
    break if win?(players_cards)

  elsif answer.downcase.start_with?('s')
    players_total = total(players_cards)
    puts "Your final score is #{players_total}"
    break
  else
    puts "Please enter a correct choice. (hit or stay)"
  end
  players_total
end
puts "The dealer has: #{dealers_cards.map { |set| set[0] }}"

if win?(players_cards) != true && bust?(players_cards) != true
  loop do
    dealers_total = total(dealers_cards)

    if bust?(dealers_cards)
      puts "You win! The dealer busted!"
      break
    elsif win?(dealers_cards)
      puts "You lost! Better luck next round!"
      break
    end

    if total(dealers_cards) < 17
      dealers_cards << deal_cards[0]
      puts "The dealer's cards are now #{dealers_cards.map { |set| set[0] }}"

      puts 'bust! The dealer busted, YOU WIN BABYYY!' if bust?(dealers_cards)
      break if bust?(dealers_cards)

      puts 'The Dealer got 21! You lose.' if win?(dealers_cards)
      break if win?(dealers_cards)

    elsif total(dealers_cards) >= 17
      puts "The dealer's final score is #{dealers_total}"

      if bust?(dealers_cards)
        puts "The dealer busted! You win BABYY!!"
      elsif total(dealers_cards) > total(players_cards)
        puts "The dealer won! better luck next time!"
      else
        puts "YOU WON! YEA BABBYYYY!"
      end
      break
    end
  end
end
