require "task_checker"

RSpec.describe "to check a keyword against a provided string" do
    context "if no task provided" do
        it "fails" do
            expect{ task_checker("") }.to raise_error "No task found"
        end
    end
    context "if chore entered with keyword #TODO" do
        it "return Task to do" do
            result = task_checker("#TODO Washing up")
            expect(result).to eq "Task to do"
        end
        it "return Task to do" do
            result = task_checker("#TODO Laundry")
            expect(result).to eq "Task to do"
        end
    end
    context "if chore entered without keyword #TODO" do
        it "return No task to do" do
            result = task_checker("Hoovering")
            expect(result).to eq "No task to do"
        end
        it "return No task to do" do
            result = task_checker("Clean windows")
            expect(result).to eq "No task to do"
        end
    end
end