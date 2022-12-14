def snippet(string)
    str_arr = string.split(" ")
    if str_arr.count <= 5
        return string
    else str_arr2 = str_arr[0..4]
        return str_arr2.join(" ").to_s.concat("...")
    end
end
