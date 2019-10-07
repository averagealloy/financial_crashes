#controller
class CLI
  def call
    list_crashes
    menu
    goodbye
  end


  def list_crashes
    puts "Welcome, History repeats itself so learn about Financial Nightmare's."

    @crashes = Crash.now
    @crashes.each.with_index(1) do |crash, i|
      puts ""
      puts "#{i}. #{crash.name}"
      puts ""
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "what would you like to learn about today?,to leave the program type exit: "
      puts ""

      input = gets.chomp

      if input.to_i > 0 && input.to_i <= Crash.all.count
        the_crash = Crash.all[input.to_i-1]
        puts ""
        puts "The crash you have selected is #{the_crash.name}. Here is some more info about what you have selected :
        #{the_crash.blurb}"
        puts ""
      elsif
        puts ""
        puts "I can't find that crash."
        puts ""
      else input == 'exit'
      end
    end
  end

  def goodbye
    puts ''
    puts "I hope you have learned as much as I did making this project have a good day!"
    puts ''
  end
end
