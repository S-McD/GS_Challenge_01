require "count_words"

RSpec.describe "count words method" do
    it "counts the number of words within a string" do
        result = count_words("one, two, three, four, five")
        expect(result).to eq 5
    end
end