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
  binding.pry
  @@all
end

end
