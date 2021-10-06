def ask_a_name
  gets.chomp
end

def show_greetings
  puts 'welcome to guess game'
  puts 'whats your name?'
  name = ask_a_name
  puts "Let\'s start the game, #{name}"
  puts "\n" * 2
end

def select_secret_number
  puts 'picking a number between 0 and 200 so you can try to guess...'
  puts 'all set... how about taking a try?'
  puts "\n" * 2
  175
end

def ask_a_number
  gets.chomp.to_i
end

def let_player_try_to_guess(secret_number,total_chutes)
  attempts_limit = 3

  for count in 1..attempts_limit
    puts "attempt #{count} / #{attempts_limit}"
    puts 'enter a number'
    user_input = ask_a_number
    puts "\n" * 2
    break if check_winner_end_game(user_input,secret_number,count,attempts_limit)
    give_hint(user_input,secret_number)
    puts "chutes até o momento: #{chutes(user_input,total_chutes).join(', ')} "
    sleep 1
  end
end

def give_hint(user_input,secret_number)
  puts 'The number was incorect...  secret number is bigger :(' if user_input < secret_number
  puts 'The number was incorect... secret number is smaller :(' if user_input > secret_number
  puts "\n" * 2
end

def check_winner_end_game(user_input,secret_number,count,attempts_limit)
  puts "lets see if you\'re right (your number: #{user_input})"
  sleep 2
  puts "\n" * 2
  if user_input == secret_number
    puts 'You won!!'
    return true
  elsif user_input != secret_number and count == attempts_limit
    puts "You lose... the number was: #{secret_number}"
    return true
  end
  false
end

def chutes(num,total)
  total << num
end

total_chutes = []
show_greetings
secret_number = select_secret_number
let_player_try_to_guess(secret_number,total_chutes)



