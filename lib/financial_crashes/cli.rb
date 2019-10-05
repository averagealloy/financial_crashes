#controller
class FinancialCrashes::CLI
  def call
    puts "Welcome, History repeats itself so learn about Financial Nightmare's."
    list_crashes
    menu
    goodbye
  end


  def list_crashes
    # puts <<-DOC.gsub /^\s*/, ''
    # 1.crash1
    # 2.crash2
    # 3.crash3
    # 4.crash4
    # 5.crash5
    # DOC
    @Crashes = FinancialCrashes::Crash.today
    @Crashes.each.with_index(1) do |crash, i|
      puts "#{i}. #{crash}"
    end 
  end

  def menu
    input = nil
    while input != "exit"
      puts "what would you like to learn about today?,to see the crashes again type list! or to leave the program type exit: "

      input = gets.strip.downcase
      if input.to_i > 0
        puts @Crashes[input.to_i-1]
      elsif input == list
        list_crashes
      else
      puts "I can't find that crash. try typing list to see the list of crashes again"
      end
    end
  end

  def goodbye
    puts "I hope you have learned as much as I did making this project have a good day!"
  end
end
