# Receives an array of cards and prints them
def print_board(cards)
  i = 0
  for i in 0..cards.length()
    print(cards[i])
    if ((i + 1) % 3).zero?
      puts
    end
  end
  puts
end

cards = [['one', 'oval', 'empty'], ['two', 'triangle', 'striped'], ['three', 'square', 'filled'], ['one', 'oval', 'empty'], ['two', 'triangle', 'striped'], ['three', 'square', 'filled'], ['one', 'oval', 'empty'], ['two', 'triangle', 'striped'], ['three', 'square', 'filled']]
print_board(cards)
