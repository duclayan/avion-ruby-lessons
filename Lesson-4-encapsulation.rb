class YourPhone
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
end

user1 = YourPhone.new("Kazz", "9213", "kazz@gmail.com")
user2 = YourPhone.new("Kali","313","Kalies@poasd.com")

user1.phoneUser()
user2.phoneUser