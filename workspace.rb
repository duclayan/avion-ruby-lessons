class User
    # protected method should access and object or self
    def perform
        protected_method
    end

    def try_this
        puts "public method"
        private_method
        end

    private
    def private_method
        puts "private method"
    end

    protected
    def protected_method
        puts "protected method"
    end
end

ana = User.new
tin = User.new

ana.perform


