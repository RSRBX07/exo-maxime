#require 'file'
class Counter
    def initialize

    end

    def add_one
        
    end

    def value
        File.open "./tmp/counter", "r" do |file|
            file.each_line {|line| return line}
        end
        puts counter_file
    end

end

class Vehicle
    attr_reader :position

    #retern the number of existing objects (in mermory) 

    def self.new
        super
    end

    def initialize
        #roubaix = latitude: 50.6927049,longitude: 3.177846999999929
        @position = {latitude: 50.6927049,longitude: 3.177846999999929,altitude: 0}
        Counter.new.add_one
    end

    def self.count
        Counter.new.value
    end

    def move delta_latitude = 0,delta_longitude = 0,delta_altitude = 0
        @position[:latitude] = @position[:latitude] + latitude
        @position[:longitude] = @position[:longitude] + longitude
        @position[:altitude] = @position[:altitude] + altitude
    end

end

#puts Vehicle.new.class.ancestors.inspect