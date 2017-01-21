class Vehicle
    attr_reader :position

    def initialize
        #roubaix = latitude: 50.6927049,longitude: 3.177846999999929
        @position = {latitude: 50.6927049,longitude: 3.177846999999929,altitude: 0}
    end

    def move delta_latitude = 0,delta_longitude = 0,delta_altitude = 0
        @position[:latitude] = @position[:latitude] + latitude
        @position[:longitude] = @position[:longitude] + longitude
        @position[:altitude] = @position[:altitude] + altitude
    end

end

#puts Vehicle.new.class.ancestors.inspect