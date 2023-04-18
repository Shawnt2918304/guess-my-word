require_relative "game_intro.rb"
require_relative "word_builder.rb"

# Define a class for the game
class GuessMe
    
  attr_reader :max_guesses

    def initialize
      @word = WordBuilder.get_random_word
      @max_guesses = word.length                         
      @incorrect_guesses = []
      @correct_guesses = []
    end
  
    def word
      @word["word"]
    end

    def hint
      @word["hint"]
    end

    # Play the game
    def play
      while !game_over?
        display_word
        puts hint
        puts "You have #{@max_guesses} guesses remaining"
        guess = gets.chomp.downcase
        if !valid_guess?(guess)
          puts "Invalid guess. Please enter a single letter."
        elsif ( @incorrect_guesses ).include?(guess)
          puts "You already guessed that letter. Please try again."
        elsif ( @correct_guesses ).include?(guess)
          puts "You already guessed that letter. Please try again."
        elsif word.include?(guess)
          puts "Correct!"
          @correct_guesses << guess
          @max_guesses += 1
          if @max_guesses > word.length + 1
            @max_guesses = word.length + 1
          end
          puts "You have #{@max_guesses} guesses remaining"
        else
          puts "Incorrect."
          @incorrect_guesses << guess
          @max_guesses -= 1
          puts "You have #{@max_guesses} guesses remaining"
        end
      end
      display_result
    end
  
    # Check if the game is over
    def game_over?
      @max_guesses <= 0 || word_guessed?
    end  
    
  
    # Check if the word has been completely guessed
    def word_guessed?
      # word == @correct_guesses
      word.chars.all? { |letter| @correct_guesses.include?(letter) }
    end

    # Display the current state of the word, with underscores for unguessed letters
    def display_word
      display = word.chars.map do |letter|
        @correct_guesses.include?(letter) ? letter : "_"
      end
      puts display.join(" ")
    end
  
    # Display the result of the game
    def display_result
      if word_guessed?
        puts "Congratulations, you guessed the word, \n#{word.upcase}!"
      else
        puts "Sorry, you didn't guess the word. The word was #{word.upcase}."
      end
    end
  
    # Check if a guess is valid (a single letter)
    def valid_guess?(guess)
      guess.length == 1 && guess.match?(/[a-z]/) 
    end
  end

    # Game Intro 
  game_intro