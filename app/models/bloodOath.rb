require 'date'
class BloodOath

    attr_reader :initialization_date, :cult, :follower

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initialization_date = Date.new

        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        first_oath = BloodOath.all.find{|instance|instance.follower}
        first_oath.follower
    end



end
