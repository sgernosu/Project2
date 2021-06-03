# frozen_string_literal: true

# Receives a hash of players and scores and prints them along with other HUD elements
def print_hud(players)
  players.each_pair { |key, value| print "#{key}: #{value}" }
  puts
end

# Receives an array of cards and prints them
def print_board(cards)
  i = 0
  (0..cards.length).each do |i|
    print cards[i]
    puts if ((i + 1) % 3).zero?
  end
  puts
end

# Prints the main menu and calls other methods depending on user input
def main_menu(players)
  puts '1) New Game\n2) Settings\n3) Exit'
  print 'Select an option: '
  case gets.chomp
  when '1'
    new_game(players) # This might be named something else
  when '2'
    settings_menu(players)
  when '3'
    exit
  else
    puts 'Please select an available option'
    main_menu(players)
  end
end
