array_one = [34,15,88,2]
array_two = [34,-345,-1,100]

def find_minimum(x)
    min = x[0]
    x.each { |num| min=num if min>num }
    min
end

puts find_minimum(array_one)
puts find_minimum(array_two)