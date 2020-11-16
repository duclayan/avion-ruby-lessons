array_one = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15]
def getSum(x)
    return [] unless x.length > 0
    total = [0,0]
    x.each do |num|
        num = num.to_i
        (num > 0) ? (total[0] += 1) : (total[1] += num)
    end
    return total
end

puts getSum(array_one)
