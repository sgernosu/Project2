# frozen_string_literal: true

# Receives an array of cards and prints them
def print_board(cards)
  i = 0
  (0..cards.length).each do |i|
    print cards[i]
    puts if ((i + 1) % 3).zero?
  end
  puts
end

# Receives a hash of players and scores and prints them along with other HUD elements
def print_hud(players)
  players.each_pair { |key, value| puts "#{key}: #{value}" }
  puts
end

cards = [%w[one oval empty], %w[two triangle striped], %w[three square filled], %w[one oval empty], 
         %w[two triangle striped], %w[three square filled], %w[one oval empty], %w[two triangle striped],
         %w[three square filled]]
print_board(cards)
