context# {{Challenge 03}} Method Design Recipe
# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

# # EXAMPLE

"task_checker" checks a keyword against a string for a match
task_checker(chore)
chore = a string (eg "#TODO Washing up")

# # The method doesn't print anything or have any other side-effects
# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

task_checker("") => "No task found"
task_checker("#TODO Washing up) => "Task to do"
task_checker("Hoovering") => "No task to do"
task_checker("#TODO Laundry) => "Task to do"
task_checker("Clean windows") => "No task to do"

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.