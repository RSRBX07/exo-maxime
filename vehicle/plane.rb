require './vehicle/vehicle.rb'
class Plane < Vehicle
    #attr_reader :flight

    def initialize
        super
        @flight = false
        #@position = {latitude: 0,longitude: 0,altitude: 0}
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
puts p.position