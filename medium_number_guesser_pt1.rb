class GuessingGame
  GUESSES = 7

  def initialize
    @answer = (1..100).to_a.sample
    @guesses_left = GUESSES
    @guess = nil
  end

  def display_welcome_message
    puts "Welcome to the Guessing Game!"
    puts "Try to guess the secret number!"
    puts ""
  end

  def display_guesses
    puts ""
    puts "Remaining guesses: #{guesses_left}"
  end

  def guess_answer
    loop do
      puts "Enter a number between 1 and 100: "
      self.guess = gets.chomp.to_i
      break if (1..100).include? guess
      puts "Invalid guess."
    end
  end
  
  def correct_number?
    guess == answer
  end

  def high_or_low?
    if guess > answer
      puts "Your guess is too high."
    else
      puts "Your guess is too low."
    end
  end

  def remaining_guesses?
    guesses_left == 0
  end

  def display_no_guesses_left
    puts ""
    puts "You have no more guesses. You lost!" if guesses_left == 0
  end

  def display_result
    if correct_number?
      puts "That's the number! You won!"
    else
      high_or_low?
    end
    self.guesses_left = guesses_left - 1
  end

  def play
    system 'clear'
    display_welcome_message

    loop do
      display_guesses
      guess_answer
      display_result
      break if correct_number?
      display_no_guesses_left
      break if remaining_guesses?
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

# game stops when there are no remaining guesses

# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low.

# You have no more guesses. You lost!
