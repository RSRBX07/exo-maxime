require './vehicle/counter.rb'
class Vehicle
    attr_reader :position
    #retern the number of existing objects (in mermory) 
    def self.new
        super
    end

    def initialize
        #roubaix = latitude: 50.6927049,longitude: 3.177846999999929
        @position = {latitude: 50.6927049,longitude: 3.177846999999929,altitude: 0}
        Counter.add_one
    end

    def self.count
        Counter.value_storage
    end

    def move delta_latitude = 0,delta_longitude = 0,delta_altitude = 0
        @position[:latitude] = @position[:latitude] + delta_latitude
        @position[:longitude] = @position[:longitude] + delta_longitude
        @position[:altitude] = @position[:altitude] + delta_altitude
    end

end

#puts Vehicle.new.class.ancestors.inspect