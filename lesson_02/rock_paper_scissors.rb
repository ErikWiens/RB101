# rock_paper_scissors.rb
# https://launchschool.com/lessons/a0f3cd44/assignments/9e75343c
# Erik Wiens

VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']

# CHOICES = {
#   'rock' =>     { shorthand: 'r', beats: ['scissors', 'lizard'] },
#   'paper' =>    { shorthand: 'p', beats: ['rock', 'Spock'] },
#   'scissors' => { shorthand: 's', beats: ['paper', 'lizard'] },
#   'lizard' =>   { shorthand: 'l', beats: ['paper', 'Spock'] },
#   'Spock' =>    { shorthand: 'S', beats: ['rock', 'scissors'] }
# }

BEATS = {
  'rock' => ['paper', 'Spock'],
  'paper' => ['scissors', 'lizard'],
  'scissors' => ['rock', 'Spock'],
  'lizard' => ['rock', 'scissors'],
  'Spock' => ['lizard', 'paper']
}

SHORTHAND = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'S' => 'Spock'
}

MAX_WINS = 3

score = {
  'player' => 0,
  'computer' => 0
}

def win?(first, second)
  # CHOICES[first][:beats].include?(second)
  BEATS[second].include?(first)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("The computer won!")
  else
    prompt("It's a tie!")
  end
end

def update(score, player, computer)
  if win?(player, computer)
    score['player'] += 1
  elsif win?(computer, player)
    score['computer'] += 1
  end
end

def display_score(score)
  prompt("Player: #{score['player']}, Computer: #{score['computer']}")
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if choice.length == 1 && SHORTHAND.key?(choice)
      choice = SHORTHAND[choice]
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}. The computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)
  update(score, choice, computer_choice)
  display_score(score)

  if score['player'] == MAX_WINS
    prompt("You are the Grand Winner!")
    break
  end

  if score['computer'] == MAX_WINS
    prompt("The computer is the Grand Winner!")
    break
  end

  # prompt(results(choice, computer_choice))

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")
