#controller
class FinancialCrashes::CLI
  def call
    puts "Welcome, History repeats itself so learn about Financial Nightmare's."
    list_crashes
    menu
    goodbye
  end


  def list_crashes

    @Crashes = FinancialCrashes::Crash.now
    @Crashes.each.with_index(1) do |crash, i|
      puts "#{i}. #{crash.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "what would you like to learn about today?,to see the crashes again type 'crashes'! or to leave the program type exit: "

      input = gets.strip.downcase

      if input.to_i > 0 && input.to_i <= FinancialCrashes::Crash.all.count
        the_crash = FinancialCrashes::Crash.all[input.to_i-1]
        puts "The crash you have selected is #{the_crash.name}. Here is some more info about what you have selected :
    #{the_crash.blurb}"
    puts ""
      elsif input == "crashes"
        list_crashes
      elsif input == 'exit'
      else
      puts "I can't find that crash. try typing 'crashes' to see the list of crashes again"
      end
    end
  end

  def goodbye
    puts "I hope you have learned as much as I did making this project have a good day!"
  end
end
