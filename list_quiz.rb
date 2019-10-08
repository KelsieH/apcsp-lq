def three_even(list) # not done
    count = 0
    row = 0
    if list.size == 0
        return false
    end
    list.each do |n|
        if n % 2 == 0  
            count += 1
        end
    end
    if count >= 3
        return true
    end
    return false
end

puts three_even([2, 1, 3, 5]) # false
puts three_even([2, 4, 12, 5]) # true
puts three_even([2, 1, 4, 6]) # false
puts three_even([1, 4, 6, 4]) # true
puts three_even([]) # false


def bigger_two(ints, nums)
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


def series_up(n)
    lst = []
    length = n*(n+1)/2
    if length < 1
        print n
    end
    (length).times do |i|
        
        
    end
    print lst
end

puts series_up(1) #[1]
puts series_up(2) #[1, 1, 2]
puts series_up(3) #[1, 1, 2, 1, 2, 3]
puts series_up(4) #[1, 1, 2, 1, 2, 3, 1, 2, 3, 4]