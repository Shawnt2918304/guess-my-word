require_relative "guess_me.rb"

  # Start the game
word = "ruby"
game = GuessMe.new(word, word.length)
game.play



