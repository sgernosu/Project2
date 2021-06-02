# frozen_string_literal: true

# Receives a hash of players and scores and prints them along with other HUD elements
def print_hud(players)
  players.each_pair { |key, value| puts "#{key}: #{value}" }
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

# Prints the main menu and calls other methods depending on user input (not yet though)
def main_menu()
  puts '1) New Game'
  puts '2) Settings'
  puts '3) Exit'
end
