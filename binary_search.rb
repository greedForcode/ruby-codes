def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1
    
ans=0
    while first <= last
        i = (first + last) / 2

        if an_array[i] == item
            ans=i
            last=i-1
        elsif an_array[i] > item
            last = i - 1
        elsif an_array[i] < item
            first = i + 1
        else
            return "#{item} not found in this array"
        end
    end
    return ans+1
end
