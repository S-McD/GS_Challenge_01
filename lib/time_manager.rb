def time_manager(number)
    read_speed = 200
    read_mins = number / read_speed

    if number == 0 then
        p "You've got nothing to read"

    elsif number > 0 && number <= 200
        p "Reading this text will take a minute"

    else
        p "Reading this text will take #{read_mins} minutes"
    end
end