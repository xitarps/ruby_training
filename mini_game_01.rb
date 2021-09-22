puts 'welcome to guess game'
puts 'whats your name?'
name = gets.chomp
puts "Let\'s start the game, #{name}"
puts "\n" * 2
puts 'picking a number between 0 and 200 so you can try to guess...'
secret_number = 175
puts 'all set... how about taking a try?'
puts "\n" * 2
puts 'first try'
puts 'enter a number'
user_input = gets.chomp.to_i
puts "lets see if you\'re right (your number: #{user_input})"
puts 'You won!!' if user_input == secret_number
puts 'The number was incorect... :(' if user_input != secret_number
puts "\n" * 2
puts 'second try'
puts 'enter a number'
user_input = gets.chomp.to_i
puts "lets see if you\'re right (your number: #{user_input})"
puts 'You won!!' if user_input == secret_number
puts 'The number was incorect... :(' if user_input != secret_number
puts "\n" * 2
puts 'last try'
puts 'enter a number'
user_input = gets.chomp.to_i
puts "lets see if you\'re right (your number: #{user_input})"
puts 'You won!!' if user_input == secret_number
puts 'The number was incorect... :(' if user_input != secret_number
