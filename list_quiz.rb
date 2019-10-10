def three_even(list) # my first code didn't work because it returned true if any three evens showed up. It didn't check if they were all in a row, so that's what I had to change
    if list.size == 0
        return false
    end
    (list.size - 2).times do |n|
        slice = list[n..(n+2)] # I created a slice so that's its easier to compare instead of comparing individual integers. THe slice is three because there has to be three evens in a row
        if slice[0] % 2 == 0 && slice[1] % 2 == 0 && slice[2] % 2 == 0 # compares if the slice of three of the numbers in a row are all even (modulus 2 = 0)
            return true #instead of having a counter, the line above makes it easier to just compare the size to three, and you can just immediately return true instead of checking the number of evens in a row. 
        end
    end
    return false
end

puts three_even([2, 1, 3, 5]) # false
puts three_even([2, 4, 12, 5]) # true
puts three_even([2, 1, 4, 6]) # false
puts three_even([1, 4, 6, 4]) # true
puts three_even([]) # false


def bigger_two(ints, nums) # I didn't change anything here because my code works fine
    sum1 = 0
    sum2 = 0
    ints.each do |i|
        sum1 += i
    end
    nums.each do |n|
        sum2 += n
    end
    if sum1 > sum2
        print ints
    elsif sum2 > sum1
        print nums
    elsif sum2 == sum1
        print ints
    end

end

puts bigger_two([1, 2], [3, 4]) #[3, 4]
puts bigger_two([1, 7], [4, 4]) #[1, 7]


#what my idea was previously for this code. It isn't efficient because it only goes up to ten and it's hard to just list it out as a variable

# def series_up(n)
#     numss = [1, 1, 2, 1, 2, 3, 1, 2, 3, 4, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#     len = n*(n+1)/2
#     slice = numss[0..(len-1)]
#     print slice
# end

def series_up(n)
    new_list = [] #defining variables
    size = 1 # This is the size of the list
    int = 1 #what you're pushing into the new list
    while size <= n # while the size is less than the number you input,
        while int <= size #while the number you're pushing is less than the size, so it knows when to stop. (for example, when n = 2, it can only go up to two, and not three). size is a direct comparison to the number you input as well
            new_list.push(int) #push int into the new list
            int += 1 #then, since it's increasing, you increase the int so every time it counts up. This specific loop stops when int gets greater than size. 
        end
        int = 1 #When that loop stops, int is reset to zero so that as long as size is <= n, it can keep looping the numbers pushed. 
        size += 1 #then it increases the size, because you made it zero in the beginning. The size keeps increasing until it reaches the number you input, n. And while the size is less than or equal to n, the loop keeps repeating. When it stops repeating, the newlist is printed.
    end
    print new_list #when everything is done looping (so when the size becomes greater than n), the newlist is printed. 
end


puts series_up(1) #[1]
puts series_up(2) #[1, 1, 2]
puts series_up(3) #[1, 1, 2, 1, 2, 3]
puts series_up(4) #[1, 1, 2, 1, 2, 3, 1, 2, 3, 4] 