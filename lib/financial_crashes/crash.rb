class Crash
attr_accessor :name, :blurb
@@all = []
  def initialize(name, blurb)
  @name = name
  @blurb = blurb
  @@all << self
  end

   def self.all
     @@all
   end
   def self.get_name(doc)
     doc.css("div p strong").map {|title|title.text}
   end

   def self.get_blurb(index, doc)
     doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[index]

   end


  def self.now
    doc = Nokogiri::HTML(open("https://www.thegentlemansjournal.com/five-worst-financial-crashes-time/"))

    get_info = get_name(doc)
    get_info.each.with_index(1) do |name, i|
    crash = self.new(name, get_blurb(i*2,doc))


      end


     #
    #  crash_1 = self.new
    #   crash_1.name = doc.css("div p strong").map {|title|title.text}[0]
    #   crash_1.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[2]
     #
     #
    #  crash_2 = self.new
    #   crash_2.name = doc.css("div p strong").map {|title|title.text}[1]
    #   crash_2.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[4]
     #
     #
    #  crash_3 = self.new
    #   crash_3.name = doc.css("div p strong").map {|title|title.text}[2]
    #   crash_3.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[6]
     #
     #
     #
    #  crash_4 = self.new
    #   crash_4.name = doc.css("div p strong").map {|title|title.text}[3]
    #   crash_4.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[8]
     #
    #  crash_5 = self.new
    #   crash_5.name = doc.css("div p strong").map {|title|title.text}[4]
    #   crash_5.blurb = doc.css(".o-wrapper.o-wrapper--reading.o-wrapper--right p").map{|blurb| blurb.text}[10]
     #
     #
       self.all
  end




end
