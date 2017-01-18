require './vehicle/vehicle.rb'
class Plane < Vehicle
    #attr_reader :flight
    def slef.count
        @count += 1
    end

    def self.new count = slfe.count
        super
    end

    def initialize
        super
        @flight = false
    end

    def flight?
        @flight
    end

    def land
        @flight = false
    end

    def take_off
        @flight = true
    end

    def move latitude = 0,longitude = 0,altitude = 0
      flight? ? super : false
    end

    private


end

a = Plane.new
b = Plane.new
p = Plane.new
puts p.position
p.take_off
#Tours = latitude: 47.394144000000004,longitude: 0.6848399999999288
p.move(-3.2985609,-2.493007)
puts "Advance to Tours"
puts p.position
