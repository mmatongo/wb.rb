# frozen_string_literal: true

# class manages workspace builder
class WB
  # I keep getting an error that this method is too long
  def self.run
    loop do
      # get user input for what they want to init
      prompt = '> '

      puts "\nType ':q' to quit and ':h' for help"
      print prompt.to_s
      input = $stdin.gets.to_s.chomp!

      # exit the program if it matches key words.
      break if [':q', 'quit', 'exit'].include?(input)

      # get user input for the
      case input
      when ':h'
        WB.help
      when 'c'
        WB.c
      when 'go'
        WB.golang
      when 'sh'
        WB.sh
      when 'ruby'
        WB.rb
      when 'rs'
        WB.rust
      else
        puts "\n Invalid command, type ':h' to see available commands."
      end
    end
  end

  def self.motd
    puts 'Enter the name of the project below.'
  end

  def self.help
    puts '        Help'
    puts "':h'  - This help menu."
    puts "':q'  - Quit the application."
    puts "'go'  - Init golang project."
    puts "'c '  - Init rust project."
    puts "'sh'  - Init a shell project."
    puts "'rb'  - Init a ruby project."
    puts "'rs'  - Init a rust project."
  end

  def self.c
    motd

    # temporal scaffolding
    prompt = '> '
    print prompt.to_s
    project_name = $stdin.gets.chomp.to_s

    FileUtils.mkdir_p "#{project_name}/src"
    File.open("#{project_name}/src/main.c", 'w') do |x|
      x.write("#include <stdio.h>\n")
      x.write("#include <stdlib.h>\n")
    end
    FileUtils.touch("#{project_name}/Makefile")
    exit
  end
end
