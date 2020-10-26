def ageCalculator(age)
    age = age.to_i
    puts "Your age in 10 years"
    puts "#{age + 10}"
    puts "Your age in 20 years"
    puts "#{age + 20}"
    puts "Your age in 30 years"
    puts "#{age + 30}"
    puts "Your age in 40 years"
    puts "#{age + 40}"
end

puts "Enter your Age"
age = gets 
ageCalculator(age)
