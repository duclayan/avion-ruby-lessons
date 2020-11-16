array_one = [1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15]

def getSum(x)
    total = [0,0]
    x.each do |num|
        num = num.to_i

        if num > 0
            total[0] = total[0] + 1
        elsif num < 0 
            total[1] = total[1] + num
        end

    end
    puts "the total is #{total}"
    return total
end
puts (getSum(array_one).is_a? Array)