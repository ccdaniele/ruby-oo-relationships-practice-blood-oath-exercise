class Cult

    attr_accessor :name, :location, :

    @@all = []

    def initialize (name, location, year, slogan)
        @name = name
        @location = location
        @year = year
        @slogan = slogan
        @@all << self
    end

    

end