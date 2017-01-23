require_relative 'vehicle.rb'
class Plane < Vehicle
    #attr_reader :flight
  
    def self.new
      puts "Im creating a new Plane in Roubaix"
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

    def move delta_latitude = 0,delta_longitude = 0,delta_altitude = 0
      return false if !flight?
      super
    end

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
Vehicle.count
Plane.count