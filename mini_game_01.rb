def show_greetings
  puts 'welcome to guess game'
  puts 'whats your name?'
  name = gets.chomp
  puts "Let\'s start the game, #{name}"
  puts "\n" * 2
end

def select_secret_number
  puts 'picking a number between 0 and 200 so you can try to guess...'
  puts 'all set... how about taking a try?'
  puts "\n" * 2
  175
end

def let_player_try_to_guess(secret_number)
  attempts_limit = 3

  for count in 1..attempts_limit
    puts "attempt #{count} / #{attempts_limit}"
    puts 'enter a number'
    user_input = gets.chomp.to_i
    puts "\n" * 2
    puts "lets see if you\'re right (your number: #{user_input})"
    sleep 2
    puts "\n" * 2
    if user_input == secret_number
      puts 'You won!!'
      break
    end
    puts 'The number was incorect...  secret number is bigger :(' if user_input < secret_number
    puts 'The number was incorect... secret number is smaller :(' if user_input > secret_number
    puts "\n" * 2
    sleep 1
  end
end

show_greetings
secret_number = select_secret_number
let_player_try_to_guess(secret_number)



