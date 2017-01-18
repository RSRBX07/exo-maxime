class Vehicle
    attr_reader :position

    def initalize
        @position = [0,0,0]
    end

    def move
        puts "move #{@position}"
    end

end