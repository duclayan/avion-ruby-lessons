class Bank_account
    attr_accessor :balance
    attr_accessor :add_to_record
    def initialize(account_number,balance)
        @account_number = account_number
        @balance = balance
        @add_to_record = []
    end

    def withdraw(amount)
        @balance -= amount.to_i
        @add_to_record.push(" #{amount} withdrawed")
    end

    def deposit(amount)
        @balance += amount.to_i
        @add_to_record.push("#{amount} deposited")
    end
end

account1 = Bank_account.new("S2930", 12312)
account1.withdraw(231)
account1.withdraw(2343)
account1.withdraw(2321)
account1.deposit(2424)
puts account1.add_to_record