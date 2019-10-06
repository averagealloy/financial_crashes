class FinancialCrashes::Crash
attr_accessor :name, :blurb, :url
@@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.now
    doc = Nokogiri::HTML(open("https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"))


    #  #puts <<-DOC.gsub /^\s*/, ''
     #
    #  2.crash2
    #  3.crash3
    #  4.crash4
    #  5.crash5
    #  DOC

 #doc.css(".o-wrapper.o-wraper--reading.o-wrapper--right").map{|e|.text}

     crash_1 = self.new
      crash_1.name = doc.css("div p strong").map {|title|title.text}[0]
      crash_1.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[2]
     crash_1.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

     crash_2 = self.new
      crash_2.name = doc.css("div p strong").map {|title|title.text}[1]
      crash_2.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[4]
     crash_2.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

     crash_3 = self.new
      crash_3.name = doc.css("div p strong").map {|title|title.text}[2]
      crash_3.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[6]
     crash_3.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"


     crash_4 = self.new
      crash_4.name = doc.css("div p strong").map {|title|title.text}[3]
      crash_4.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[8]
     crash_4.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

     crash_5 = self.new
      crash_5.name = doc.css("div p strong").map {|title|title.text}[4]
      crash_5.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[10]
     crash_5.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"



     #binding.pry
     #
     # crash_2 = self.new
     # crash_2.name = "crash2"
     # crash_2.blurb = "You have selected B crash here is more about it.
     # BZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
     # crash_2.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"
     #
     # crash_3 = self.new
     # crash_3.name = "crash3"
     # crash_3.blurb = "You have selected C crash here is more about it.
     # CZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
     # crash_3.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"
     #
     # crash_4 = self.new
     # crash_4.name = "crash4"
     # crash_4.blurb = "You have selected D crash here is more about it.
     # DZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
     # crash_4.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"
     #
     # crash_5 = self.new
     # crash_5.name = "crash5"
     # crash_5.blurb = "You have selected E crash here is more about it.
     # EZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
     # zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
     # crash_5.url = "https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"

     #[crash_1, crash_2, crash_3, crash_4, crash_5]
    @@all
  end

end
