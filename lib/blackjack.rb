def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  new_card = 1 + rand(11)
  return new_card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  user_input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  2.times do
    deal_card
  end
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end


def hit?(card_total)
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
  card_total
end



def invalid_command
  puts "Please enter a vaild command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total =0
until card_total >= 21
initial_round
hit?(card_total)
end
end_game
end
