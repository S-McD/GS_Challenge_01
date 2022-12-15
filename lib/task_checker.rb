def task_checker(chore)
    fail "No task found" if chore.empty?

    if chore.include?("#TODO")
        return "Task to do"
    else "No task to do"
    end
end