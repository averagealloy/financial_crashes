class FinancialCrashes::Crash

def self.today
  #should return instances of  crash

  puts <<-DOC.gsub /^\s*/, ''
  1.crash1
  2.crash2
  3.crash3
  4.crash4
  5.crash5
  DOC

  crash_1 = self.new
  crash_1.name = "crash1"
  crash_1.blurb = "You have selected A crash here is more about it.
  AZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  crash_1.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

  crash_2 = self.new
  crash_2.name = "crash2"
  crash_2.blurb = "You have selected B crash here is more about it.
  BZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  crash_2.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

  crash_3 = self.new
  crash_3.name = "crash3"
  crash_3.blurb = "You have selected C crash here is more about it.
  CZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  crash_3.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

  crash_4 = self.new
  crash_4.name = "crash4"
  crash_4.blurb = "You have selected D crash here is more about it.
  DZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  crash_4.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

  crash_5 = self.new
  crash_5.name = "crash5"
  crash_4.blurb = "You have selected E crash here is more about it.
  EZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
  zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
  crash_5.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

  end

end
