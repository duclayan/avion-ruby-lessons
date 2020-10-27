
# =========================================================================================================================================
                                                        # Question 1
# =========================================================================================================================================
number_container = [1,2,3,4,5,6,7,8,9,10]
puts "QUESTION 1 : Display the contents of number_container array"
number_container.each {|e| puts e.inspect}

# =========================================================================================================================================
                                                        # Question 2
# =========================================================================================================================================

h = {:a=>1, :b=>2, :c=>3, :d=>4}
# Ouput B
puts "QUESTION 2.A: Output B"
puts h[:b]
# Add new key value
h.merge!(:e => 5)
puts "QUESTION 2.B: added :e => 5"
puts h

# =========================================================================================================================================
                                                        # Question 3
# =========================================================================================================================================
# Data to manipulate
contact_data = [["ana@gmail.com","123 Main ST","555-123-4567"],["avion@gmail.com","404 not Found","123-244-1321"]]
contacts = {"Analyn Cajocson" => {}, "AvionSchool" => {}}

# details_bluePrint -> Holds the titles for each of the array content
# sorted_data -> Holds array of data with title 
details_bluePrint = [:email, :address, :phoneNumber]
sorted_data = []

# Connects data in array with its matching title
contact_data.each {|value| 
    sorted_data.push(Hash[details_bluePrint.zip(value)].to_h) 
}

# Merges data with matching name
sorted_data.each {|value|
        contacts.each {|key,name|
            if contacts[key].empty? 
                contacts[key].merge!(value)
            end
        }
}
puts contacts

# =========================================================================================================================================
                                                        # Question 4
# =========================================================================================================================================

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
