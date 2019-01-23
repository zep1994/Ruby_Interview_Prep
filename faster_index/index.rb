def faster_index(target, arr)
    arr.each_with_index do |x, i|
        return i if x == target
    end
    target
end

faster_index(3, [1, 2, 3, 4, 5, 6, 7])