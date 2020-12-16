class Cult

    attr_accessor :name, :location, :slogan
    attr_reader :founding_year

    @@all = []
    #@@list_of_followers = []
    @@cult_population = 0

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        #@cult_population += 1
        @list_of_followers = []
        @@all << self
    end

    # Returns an Array of all the cults
    def self.all
        @@all 
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

end