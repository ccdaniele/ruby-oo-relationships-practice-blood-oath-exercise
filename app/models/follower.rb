class Follower

    attr_accessor :name, :age, :life_motto
    
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        my_bloodoaths.map {|bloodoath_instance|bloodoath_instance.cult}
    end

    def my_bloodoaths 
        BloodOath.all.select {|bloodoath_instance| bloodoath_instance.follower == self}
    end

    # Takes in an argument of a Cult instance and adds this follower to 
    # the cult's list of followers
    def join_cult(cult_name)
        BloodOath.new(cult_name,self)
    end

    # Returns an Array of all the followers
    def self.all
        @@all
    end


    # Takes an Integer argument that is an age and returns an Array of 
    # followers who are the given age or older
    def self.of_a_certain_age(age)
        self.all.find_all {|follower_instance| follower_instance.age >= age}
    end

    def my_cults_slogans
        self.cults.map{|cults_instance|cults_instance.slogan}
    end

    def self.most_active
        max_cult = cult_number.max 
        self.all.select{|follower|follower.cults.count == max_cult}    
    end  

    def self.cult_number 
        self.all.map{|follower_instance|follower_instance.cults.count}
    end


    def self.top_ten
        self.all.sort_by{|follower|follower.cults.count}.reverse
    end

    def 



     
end