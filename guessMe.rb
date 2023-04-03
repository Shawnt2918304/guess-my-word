# Define a class for the game
class GuessMe
    # Initialize the game with a word to guess and a number of guesses allowed
    def initialize(word, max_guesses)
      @word = word.downcase
      @max_guesses = max_guesses
      @guesses = []
    end
end
 
  # Start the game
  puts "Hello! Welcome to GuessME the word guessing game!"
  sleep(1)
  puts "The objective of this game is to guess the correct word based off the the hint provided. The number of attempts you will have to guess the word depends on the number of letters in the word."
  sleep(1)
  puts "Let the game begin"
  sleep(1)
  puts "3"
  sleep(1)
  puts "2"
  sleep(1)
  puts "1"
  sleep(0.5)
  puts "WORD HINT: Yukihiro 'Matz' Matsumoto blended parts of his favorite programming languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to create this language."
  word = "ruby"
  game = GuessMe.new(word, word.length)










