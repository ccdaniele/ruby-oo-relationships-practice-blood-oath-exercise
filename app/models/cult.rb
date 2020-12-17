class Cult

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []
  

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    # Returns an Array of all the cults
    def self.all
        @@all 
    end
    #takes in an argument of a Follower instance and adds them to this cult's list of followers
    def recruit_follower(follower)
        BloodOath.new(follower,self)
    end


    # Takes a String argument that is a name and returns a Cult instance whose name 
    # matches that argument
    def self.find_by_name(name)
        self.all.find {|cult_instance| cult_instance.name == name}
    end

    # Takes a String argument that is a location and returns an Array of cults that 
    # are in that location
    def self.find_by_location(location)
        self.all.find {|cult_instance| cult_instance.location == location}
    end

    # Takes an Integer argument that is a year and returns all of the cults founded 
    # in that year
    def self.find_by_founding_year(founding_year)
        self.all.find {|cult_instance| cult_instance.founding_year == founding_year}
    end
    #returns an Integer that is the number of followers in this cult
    def cult_population
        my_followers.count
    end
    
    def my_bloodoaths 
        BloodOath.all.select {|bloodoath_instance| bloodoath_instance.cult == self}
    end
        
    def my_followers 
        my_bloodoaths.map {|cult_instance|cult_instance.follower}.uniq
    end

    def average_age
        my_age = my_followers.map {|follower_instance|follower_instance.age}
        my_age.sum.to_f / my_age.size
    end

    def my_followers_mottos
        my_followers.map{|followers_instance|followers_instance.life_motto}
    end

    def self.least_popular
        self.all.min_by {|cult_instance|cult_instance.cult_population}
    end

    def self.my_locations
        locations = self.all.map {|cult_instance|cult_instance.location}
        locations.max_by{|location|locations.count(location)}
    end


end