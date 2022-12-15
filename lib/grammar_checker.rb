def grammar_checker(sentence)
    fail "Not a sentence" if sentence.empty?

    first_letter_check = sentence.chars.first == sentence.chars.first.upcase
    last_char_check = sentence.end_with?(".","!","?")

    if first_letter_check && last_char_check
        return true
    else false
    end
end