class Counter

    def initialize      
    end

    def self.value_storage(arg = 0)
        if arg != 0
        @value_var = arg
        else
        puts @value_var
        end
    end

    def self.add_one
      arg = self.value + 1
      self.value_storage(arg)
      File.open "./tmp/counter", "w" do |file|
        file.write arg
      end
    end



    private

    def self.value
        File.open "./tmp/counter", "r" do |file|
            file.each_line {|line| return line.to_i}
        end
    end

end