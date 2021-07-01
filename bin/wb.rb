class WB

    def self.run
        while true
            # get user input for what they want to init
            prompt = "> "

            puts "\nType ':q' to quit and ':h' for help"
            print "#{prompt}"
            input, projectName = ARGV  #gets.chomp will be used but not now, I need to test ARGV

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
end

def self.help
    print "Help"
    print ":h - This help menu."
    print ":q - Quit the application."
    print "go - Init golang project."
    print "c" - "Init rust project."
end