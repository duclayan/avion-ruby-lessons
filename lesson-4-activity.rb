module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
end
  
module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end  
end
  
class User
    
    attr_accessor :password
    

    def initialize(username, password, ip_address)
        @username = username
        # @change_password = password
        @password = password
        @ip_address = ip_address
    end

    def change_password (newPassword)
        @password = newPassword
    end
    protected
    def getPassword 
        return @change_password
    end

    def login
      puts "User logged in. IP address: #{@ip_address}"
    end

end
  
  
  class Admin < User
    include AdminPermisson

    def admin_login
        login
    end
  end
  
  
  class Buyer < User
    include BuyerPermission

    def buyer_login
        login
    end

  end
  
  
  
  ## execute
  
  my_admin = Admin.new('analyn', 'password', '127.0.0.1')
  my_admin.admin_login
  my_admin.edit_users_profile
  
  my_admin.change_password('new_password')
  puts  my_admin.password
  
  buyer = Buyer.new('ana', 'password', '127.0.0.1')
  buyer.buyer_login
  buyer.buy
  
  buyer.change_password('new_password')
  puts buyer.password