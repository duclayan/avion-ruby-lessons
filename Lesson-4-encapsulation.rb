class YourPhone
    attr_accessor :passcode
    def initialize(owner,passcode,email)
        @owner = owner
        @passcode = passcode
        @email = email
    end

    def phoneUser
        puts "Phone User: #{@owner}"
        puts "Passcode: #{@passcode}"
        puts "Email: #{@email}"
    end

    
    def randomizePassword
        @passcode = @passcode * 4
    end
end

user1 = YourPhone.new("Kazz", 921, "kazz@gmail.com")
user2 = YourPhone.new("Kali",313,"Kalies@poasd.com")

user1.randomizePassword()
puts user1.passcode