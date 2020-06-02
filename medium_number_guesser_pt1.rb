class GuessingGame
# Note that a game object should start a new game with a new number to guess with each call to #play.
  GUESSES = 7

  def initialize
    @answer = (1..100).to_a.sample
    @guesses_left = GUESSES
    @guess = nil
  end

  def display_welcome_message
    puts "Welcome to the Guessing Game!"
    puts "Try to guess the secret number from 1 to 100"
    puts "You only get #{GUESSES} guesses so guess wisely"
  end

  def number_of_guesses
    puts "You have #{guesses_left} guesses remaining."
  end

  def guess_answer
    loop do
      puts "Enter a number between 1 and 100: "
      self.guess = gets.chomp.to_i
      break if (1..100).include? guess
      puts "Invalid guess."
    end
  end

  def win?
    guess == answer
  end

  def high?
    guess > answer
  end

  def display_result
    return puts "That's the number!" if win?
    
    puts high? ? "Your guess is too high." : "Your guess is too low."
    self.guesses_left = guesses_left - 1
  end

  def play
    system 'clear'
    display_welcome_message

    loop do
      number_of_guesses
      guess_answer
      display_result
      break
    end

  end

  protected

  attr_writer :guesses_left

  private

  attr_accessor :answer, :guess
  attr_reader :guesses_left
end

game = GuessingGame.new
game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# That's the number!

# You won!

#game.play

# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high.

# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low.

# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high.

# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low.

# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high.

# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
