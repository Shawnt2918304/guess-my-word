require_relative '../guess_me.rb'

RSpec.describe GuessMe do

    describe "#initialize" do
        it "sets secret word" do
            expect(described_class.new("red",3).word).to eq("red")
        end

        it "set max guesses" do
            expect(described_class.new("red",3).max_guesses).to eq(3)
        end
    end
end

