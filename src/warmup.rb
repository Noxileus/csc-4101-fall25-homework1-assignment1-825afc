def fib(n)
    #raise Exception, "Not Implemented"
    return[] if n == 0
    result = [0]
    return result if n == 1

    result << 1 
    (2...n).each do |i|
        result << result[i-1] + result[i-2]
end
result
end

def isPalindrome(n)
    #raise Exception, "Not Implemented"
    str = n.to_s
    str == str.reverse
end

def nthmax(n, a)
    #raise Exception, "Not Implemented"
    sorted = a.sort.reverse
    sorted[n]
end

def freq(s)
    #raise Exception, "Not Implemented"
    return "" if s.empty?
    counts = Hash.new(0)
    s.each_char { |c| counts[c] += 1}
    counts.max_by {|_, v| v}[0]
end

def zipHash(arr1, arr2)
    #raise Exception, "Not Implemented"
    return nil if arr1.length != arr2.length
    Hash[arr1.zip(arr2)]
end

def hashToArray(hash)
    #raise Exception, "Not Implemented"
    hash.map{ |k, v| [k, v]}
end
