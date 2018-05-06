def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1+rand(11) 
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  
end

def get_user_input
  get.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
end

def hit(card_total)
  prompt_user
  input = get_user_input
  if input == 'h'
    new_card = deal_card
    card_total += new_card
  elif input != 's'
    invalid_command
  
  return card_total
    
  
end

def invalid_command
  puts "Please enter a valid command" 
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
