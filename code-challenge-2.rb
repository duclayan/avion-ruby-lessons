array_one = [34,15,88,2]
array_two = [34,-345,-1,100]
def find_minimum(x)
  min = x[0]
    x.each do |ctr|
      if min > ctr
        min = ctr
      end
    end
    
    return min
end

puts find_minimum(array_one)
puts find_minimum(array_two)