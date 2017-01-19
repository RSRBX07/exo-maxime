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
      if self.file?
      File.open "./tmp/counter", "w" do |file|
        file.write arg
      end
      else
        #grep "tmp/counter" < <(find ~/Documents/Workplace/exo-maxime/)
        directory = File.dirname "/tmp/counter"
        file_name = ".#{directory}/counter"
        File.open file_name, "w" do |file|
        file.write arg
      end
      end
    end



    private

    def self.value
        File.open "./tmp/counter", "r" do |file|
            file.each_line {|line| return line.to_i}
        end
    end


    def self.file?
        File.exist? ("./tmp/counter")
    end

end