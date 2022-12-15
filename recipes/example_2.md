# {{PROBLEM}} Method Design Recipe
# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

'grammar_checker' checks words in a text for capital letters and punctuation
grammar_checker(sentence)

sentence: a string of words (eg "The quick brown fox jumps over the lazy dog.")

first_char_capital: first character of sentence is capital letter

last_char_punctuation: last character of sentence is punctuation mark

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.
grammar_checker("") => "Not a sentence"
grammar_checker("The quick brown fox jumps over the lazy dog.") => true
grammar_checker("The quick brown fox jumps over the lazy dog") => false
grammar_checker("the quick brown fox jumps over the lazy dog.") => false
grammar_checker("the quick brown fox jumps over the lazy dog") => false
grammar_checker("Leave me alone@") => false
grammar_checker("Mary and Samantha arrived at the bus station early, but waited until noon for the bus.) => true

# Encode each example as a test. You can add to the above list as you go.

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.