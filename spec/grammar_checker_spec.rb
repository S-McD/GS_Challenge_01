require "grammar_checker"

RSpec.describe "checks words in a text for grammar and punctuation" do
    context "given en empty string" do
        it "fails" do
            expect {grammar_checker("")}.to raise_error "Not a sentence"
        end
    end
    context "given a string that starts with a capital letter and ends with full stop" do
        it "returns true" do
        result = grammar_checker("The quick brown fox jumps over the lazy dog.")
        expect(result).to eq true
        end
    end
    context "given a string that starts with a capital letter" do
        it "returns false" do
            result = grammar_checker("The quick brown fox jumps over the lazy dog")
            expect(result).to eq false
        end
    end
    context "given a string that ends in correct punctuation only" do
        it "fails" do
            result = grammar_checker("the quick brown fox jumps over the lazy dog.")
            expect(result).to eq false
        end
    end
    context "if string is without capital letter at start and punctuation at end" do
        it "fails" do
            result = grammar_checker("the quick brown fox jumps over the lazy dog")
            expect(result).to eq false
        end
    end
end