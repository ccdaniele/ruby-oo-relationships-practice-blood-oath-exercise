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





end
