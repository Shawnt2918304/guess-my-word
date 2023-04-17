require_relative '../guess_me.rb'

RSpec.describe GuessMe do


        let(:game) {described_class.new}
        before do
            allow(WordBuilder).to receive(:get_random_word).and_return("word" => "red", "hint" => "color")
        end
        it "returns the word and hint" do
            expect(game.word).to eq("red")

            expect(game.hint).to eq("color")
        end

        it "#max_guesses" do
            expect(game.max_guesses).to eq(3)
        end

        it "#word_guessed?" do
            expect(game.word_guessed?).to eq(false)
            
            game.instance_variable_set(:@correct_guesses,"red")
            expect(game.word_guessed?).to eq(true)

            game.instance_variable_set(:@correct_guesses,"der")
            expect(game.word_guessed?).to eq(false)

            game.instance_variable_set(:@correct_guesses,"re")
            expect(game.word_guessed?).to eq(false)

            game.instance_variable_set(:@correct_guesses,"redd")
            expect(game.word_guessed?).to eq(false)

        end

        it "valid_guess?" do
            expect(game.word.length).to eq(1)
        end
end

