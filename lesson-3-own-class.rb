class Student
    def initialize(name, age, rolenumber)
        @name = name
        @age = age
        @rolenumber = rolenumber
    end

    def introduce
        puts "My name is #{@name} and I am #{@age} years old. My class role number is #{@rolenumber}"
    end
end

stud1 = Student.new("Ariel", "19", "S23")

stud1.introduce

# The class contains the attributes name,age and rolenumber. It also contains a method:introduce to introduce themselves.