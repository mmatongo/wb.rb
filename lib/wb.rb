class WB

    def self.run

        while true
            # get user input for what they want to init
            prompt = "> "

            puts "\nType ':q' to quit and ':h' for help"
            print "#{prompt}"
            input = gets.chomp  #gets.chomp will be used but not now, I need to test ARGV

            # exit the program if it matches key words.
            break if input == ":q" || input == "quit" || input == "exit"

            # get user input for the 
            case input
            when ":h"
                WB.help
            when "c"
                WB.c
            when "go" 
                WB.golang 
            when "sh" 
                WB.sh
            when "rust"
                WB.rust
            else
                puts "\n Invalid command, type ':h' to see available commands."
            end
        end
    end        
    def self.motd
        puts "Enter the name of the project below."
    end
    def self.help
        puts "        Help"
        puts "':h'  - This help menu."
        puts "':q'  - Quit the application."
        puts "'go'  - Init golang project."
        puts "'c '  - Init rust project."
        puts "'sh'  - Init a shell script. "
    end
    def self.c
        self.motd

        # temporal scaffolding
        prompt = "> "
        print "#{prompt}"
        projectName = gets.chomp.to_s

        FileUtils.mkdir_p "#{projectName}"
        FileUtils.mkdir_p "#{projectName}/src"
        File.open("#{projectName}/src/main.c", "w") do |x|     
            x.write("#include <stdio.h>\n")
            x.write("#include <stdlib.h>\n")     
          end
    end
end
