require "time_manager"

RSpec.describe "manage reading time" do
    it "returns a string if number is 0" do
        result = time_manager(0)
        expect(result).to eq "You've got nothing to read"
    end
    it "returns a string if number is 200" do
        result = time_manager(200)
        expect(result).to eq "Reading this text will take a minute"
    end
    it "returns a string if number is 2000" do
        result = time_manager(2000)
        expect(result).to eq "Reading this text will take 10 minutes"
    end
    it "returns a string if number is 10000" do
        result = time_manager(10000)
        expect(result).to eq "Reading this text will take 50 minutes"
    end
    it "returns a string if number is 300000" do
        result = time_manager(300000)
        expect(result).to eq "Reading this text will take 1500 minutes"
    end
end 