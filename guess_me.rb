# Define a class for the game
class GuessMe
    # Initialize the game with a word to guess and a number of guesses allowed
    attr_reader :word, :max_guesses

    def initialize(word, max_guesses)
      @word = word.downcase
      @max_guesses = max_guesses
      @guesses = []
    end
  
    # Play the game
    def play
      while !game_over?
        display_word
        puts "Guess a letter (#{@max_guesses - @guesses.length} guesses remaining):"
        guess = gets.chomp.downcase
        if !valid_guess?(guess)
          puts "Invalid guess. Please enter a single letter."
        elsif @word.include?(guess)
          puts "Correct!"
          @guesses << guess
        else
          puts "Incorrect."
          @guesses << guess
        end
      end
      display_result
    end
  
    private
  
    # Check if the game is over
    def game_over?
      @guesses.length == @max_guesses || word_guessed?
    end
  
    # Check if the word has been completely guessed
    def word_guessed?
      @word.chars.all? { |letter| @guesses.include?(letter) }
    end
  
    # Display the current state of the word, with underscores for unguessed letters
    def display_word
      display = @word.chars.map do |letter|
        @guesses.include?(letter) ? letter : "_"
      end
      puts display.join(" ")
    end
  
    # Display the result of the game
    def display_result
      if word_guessed?
        puts "Congratulations, you guessed the word, \n#{@word.upcase}!"
      else
        puts "Sorry, you didn't guess the word. The word was #{@word.upcase}."
      end
    end
  
    # Check if a guess is valid (a single letter)
    def valid_guess?(guess)
      guess.length == 1 && guess.match?(/[a-z]/) 
    end
  end
  
    
  # Prints game introduction and instructions
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











