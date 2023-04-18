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
            game.instance_variable_set(:@correct_guesses,"blu")
            expect(game.word_guessed?).to eq(false)
            
            game.instance_variable_set(:@correct_guesses,"red")
            expect(game.word_guessed?).to eq(true)
            
            game.instance_variable_set(:@correct_guesses,"rde")
            expect(game.word_guessed?).to eq(true)

            game.instance_variable_set(:@correct_guesses,"edr")
            expect(game.word_guessed?).to eq(true)

            game.instance_variable_set(:@correct_guesses,"erd")
            expect(game.word_guessed?).to eq(true)

            game.instance_variable_set(:@correct_guesses,"dre")
            expect(game.word_guessed?).to eq(true)

            game.instance_variable_set(:@correct_guesses,"der")
            expect(game.word_guessed?).to eq(true)

        end

        describe "#valid_guess?" do
            it "returns for a valid guess" do
                expect(game.valid_guess?("r")).to be true
            end

            it "returns false for an invalid guess" do
                expect(game.valid_guess?("3")).to be false
                expect(game.valid_guess?("red")).to be false
                expect(game.valid_guess?(" ")).to be false
                expect(game.valid_guess?("")).to be false
                expect(game.valid_guess?("rd")).to be false
                expect(game.valid_guess?("!")).to be false


            end
        end
end

