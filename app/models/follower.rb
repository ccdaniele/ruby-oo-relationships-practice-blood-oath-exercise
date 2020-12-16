class Follower

    attr_accessor :name, :age, :life_motto, :cults
    
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = []
        @@all << self
    end

    # Returns an Array of all the followers
    def self.all
        @@all
    end

    # Takes in an argument of a Cult instance and adds this follower to 
    # the cult's list of followers
    def join_cult(cult)
        self.cults.append(cult)
        
        #Cult.cult_instance.list_of_followers.append(self.name)
    end

    # Takes an Integer argument that is an age and returns an Array of 
    # followers who are the given age or older
    def self.of_a_certain_age(age)
        self.all.find_all {|follower_instance| follower_instance.age >= age}
    end

end