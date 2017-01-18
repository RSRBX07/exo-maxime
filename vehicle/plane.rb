require './vehicle/vehicle.rb'
class Plane < Vehicle
    #attr_reader :flight
    def self.new
        puts "Im creating a new Vehicle"
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
end

p = Plane.new
puts p.class.ancestors.inspect
puts p.position
#Tours = latitude: 47.394144000000004,longitude: 0.6848399999999288
p.move(-3.2985609,-2.493007)
puts p.position
