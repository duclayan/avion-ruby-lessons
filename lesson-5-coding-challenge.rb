puts "Enter a number to be checked whether it's a square or not"
number = gets.chomp.to_i

def is_square(x)
    (0..x).each do |ctr|
      return true  if ((ctr * ctr) == x)
    end
    
    return false
end

puts is_square(number)
