class WB
    
    while true
        # get user input for what they want to init
        prompt = "> "

        puts "\nType ':q' to quit and ':h' for help"
        print "#{prompt}"
        input = gets.chomp

        # exit the program if it matches key words.
        break if input == ":q" || input == "quit" || input == "exit"

        case input
        when ":h"
            WB.help
        when "go"
            WB.golang
        when "rust"
            WB.c
        else
            puts "\n Invalid command, type ':h' to see available commands."
        end
    end
end

def help
    print "Help"
    print ":h - This help menu."
    print ":q - Quit the application."
    print "go - Init golang project."
    print "c" - "Init rust project."
end