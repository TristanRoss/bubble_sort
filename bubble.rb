def bubble_sort(arr)
    for i in 0..arr.length - 1
        for j in 0..i
            if arr[j] > arr[i]
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            end
        end
    end
    return arr
end

def bubble_sort_by(arr)
    for i in 0..arr.length - 1
        for j in 0..i
            if yield(arr[j], arr[i]) >= 1
                temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            end
        end
    end
    return arr
end

#puts bubble_sort([3, 2, 1, 800, 755])
puts bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length }