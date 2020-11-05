# SOLID PRINCIPLE

# S-ingle Responsibility Principle
class Calculator
    def initialize(num1,num2)
        @num1 = num1
        @num2 = num2
    end

    def addition 
        @num1 + @num2
    end

    def subtraction
        @num1 - @num2
    end
end

calculator = Calculator.new(12,23)
puts calculator.addition


# O-pen/Closed Principle

class Account
    def initialize(username, password)
        @username = username
        @password = password
    end

    def login()
        username.login()
    end
end

class Admin 
    def login()
        puts "Admin Logged"
    end
end

class Student
    def login()
        puts "Student Logged"
    end
end

entry1 = Account.new('Angeline','0324')
entry1.login("Admin")

# L-iskov Substitution Principle

class BirthCertificate
    def initialize parentsname (mother,father,lastname)
        @mother = mother
        @father = father
        @lastname = lastname
    end 

    def ReturnFullName (name)
        @child = name + @lastname
    end
end

class child < BirthCertificate
    def ReturnFullName (name)
        super(mother)
        @child = name + mother
    end
end

# I-nterface Segregation Principle

class BirthdayOrganizer 
    def initialize birthdayCalendar (birthday)
        @birthday = birthday
    end

    def getSortedBirthdays (birthday)
        birthday.order(title:asc)
    end
end
# D-ependency Inversion Principle
class Account
    def initialize(username, password)
        @username = username
        @password = password
    end

    def login()
        username.login()
    end
end

class Admin 
    def login()
        puts "Admin Logged"
    end
end

class Student
    def login()
        puts "Student Logged"
    end
end

entry1 = Account.new('Angeline','0324')
entry1.login("Admin")