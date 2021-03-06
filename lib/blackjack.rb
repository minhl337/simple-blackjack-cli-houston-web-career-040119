def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return rand(1..11)
end

def display_card_total(x)
  # code #display_card_total here
  puts "Your cards add up to #{x}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  return gets.chomp
end

def end_game(x)
  # code #end_game here
  puts "Sorry, you hit #{x}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  x=deal_card
  y=deal_card
  z=x+y
  display_card_total(z)
  return z
end

def hit?(number)
  # code hit? here
  prompt_user
  input=get_user_input
  if input==="s"
    
    return number
    elsif input === "h"
    number+=deal_card
    
    return number
  else
    invalid_command
    prompt_user
  end
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  num=initial_round
  until num > 21
  num=hit?(num)
  display_card_total(num)
  end
  end_game(num)
end
