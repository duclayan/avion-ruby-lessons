class Your_phone
    attr_accessor :passcode
    def initialize(owner,passcode,email)
        @owner = owner
        @passcode = passcode
        @email = email
    end

    def phone_user
        puts "Phone User: #{@owner}"
        puts "Passcode: #{@passcode}"
        puts "Email: #{@email}"
    end

    
    def randomize_password
        @passcode = @passcode * 4
    end
end

user1 = Your_phone.new("Kazz", 921, "kazz@gmail.com")
user2 = Your_phone.new("Kali",313,"Kalies@poasd.com")

user1.randomize_password()
puts user1.passcode