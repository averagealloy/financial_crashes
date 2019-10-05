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
  end

  def menu
    input = nil
    while input != "exit"
      puts "what would you like to learn about today?,to see the crashes again type list! or to leave the program type exit: "
    input = gets.strip.downcase
    case input
    when "1"
      puts "You have selected A crash here is more about it.
      AZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
    when "2"
      puts "You have selected B crash here is more about it.
      CZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
    when "3"
      puts "You have selected C crash here is more about it.
      CZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
      zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
    when "4"
    puts "You have selected D crash here is more about it.
    DZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  when "5"
    puts "You have selected E crash here is more about it.
    EZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  when "list"
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
