require "snippet"

RSpec.describe "snippet" do
    it "returns first 5 words of string" do
        result = snippet("This is a new string")
        expect(result).to eq "This is a new string"
    end

    it "return ... above 5 words" do
        result = snippet("This is a new string of code")
        expect(result).to eq "This is a new string..."
    end
end