options = ['rock', 'scissors', 'paper']

puts "Choose: #{options.join(' | ')}"
print '> '
choice = gets.chomp

computer = options.sample
if options.include?(choice)

  player_wins =
    case computer
    when 'rock' then choice == 'paper'
    when 'paper' then choice == 'scissors'
    when 'scissors' then choice == 'rock'
    end

  if computer == choice
    puts 'You draw!'
  else
    puts player_wins ? 'You win!' : 'You lose!'
  end
  puts "The computer chose #{computer}."
else
  puts "That's not an option. No cheating."
end
