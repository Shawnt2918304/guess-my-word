require_relative '../guess_me.rb'

RSpec.describe GuessMe do

    describe "#initialize" do
        it "pulls a seceret word and hint from array in word_builder.rb, sets the amount of max guesses, & creates two empty arrays, incorrect_guesses and correct_guesses" do
            expect(described_class.new("red",3).word).to eq("red")
        end

        it "set max guesses" do
            expect(described_class.new("red",3).max_guesses).to eq(4)
        end
    end
end

