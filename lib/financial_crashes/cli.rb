#controller
class FinancialCrashes::CLI
  def call
    puts "Welcome, History repeats itself so learn about Financial Nightmare's."
    list_crashes
    menu
  end


  def list_crashes
    puts <<-DOC.gsub /^\s*/, ''
    1.crash1
    2.crash2
    3.crash3
    4.crash4
    5.crash5
    DOC
  end

  def menu
    puts "what would you like to learn about today?"
  end
end
