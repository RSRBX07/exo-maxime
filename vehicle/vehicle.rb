class Vehicle
    attr_reader :position

    def initialize
        @position = {latitude: 0,longitude: 0,altitude: 0}
    end

    def move latitude,longitude,altitude
        @position[:latitude] = latitude
        @position[:longitude] = longitude
        @position[:altitude] = altitude
    end

end

#puts Vehicle.new.class.ancestors.inspect