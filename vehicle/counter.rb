class Counter
    #YAMEL::load boing.to_yamel
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
      #grep "tmp/counter" < <(find ~/Documents/Workplace/exo-maxime/)
      file_name = File.join(File.dirname(__FILE__), '../tmp/')
      File.open file_name, "w" do |file|
        file.write arg
      end
    end



    private

    def self.value
      file_name = File.join(File.dirname(__FILE__), '../tmp/')
      File.open "./tmp/counter", "r" do |file|
        file.each_line {|line| return line.to_i}
      end
    end


    def self.file?
        File.exist? ("./tmp/counter")
    end

end