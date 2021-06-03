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

# Prints the win screen for whoever won
def print_winner(players)
  winner = find_winner(players)
  puts "#{winner} wins!"
end

# Prints the settings menu, where the user can add, rename, and remove players
def settings_menu(players)
  puts "1) Add Player\n2) Rename Player\n3) Remove Player\n4) Back"
  print "Select an option: "
  option = gets.chomp
  until option == '4'
    case option
    when "1"
      print "Enter player name to add: "
      name = gets.chomp
      players = add_player(players, name)
    when "2"
      print "Enter player name to change: "
      old_name = gets.chomp
      print "Enter new name: "
      new_name = gets.chomp
      players = rename_player(players, old_name, new_name)
    when '3'
      print "Enter player name to remove: "
      name = gets.chomp
      players = remove_player(players, name)
    else
      puts "Please select an available option."
    end
    puts "1) Add Player\n2) Rename Player\n3) Remove Player\n4) Back"
    print "Select an option: "
    option = gets.chomp
  end
  players
end

# Prints the main menu and calls other methods depending on user input
def main_menu(players)
  puts "1) New Game\n2) Settings\n3) Exit"
  print "Select an option: "
  option = gets.chomp
  until option == '3'
    case option
    when "1"
      new_game(players)
    when "2"
      players = settings_menu(players)
    else
      puts "Please select an available option."
    end
    puts "1) New Game\n2) Settings\n3) Exit"
    print "Select an option: "
    option = gets.chomp
  end
end
