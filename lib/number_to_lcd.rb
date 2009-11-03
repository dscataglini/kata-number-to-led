class NumberToLcd

  def self.convert(this_number)
    LCDNumber.convert(this_number)
  end
  
  class LCDNumber
		class << self
	    def convert(number)
				File.open( File.expand_path(File.dirname(__FILE__) + "/samples/#{number}.txt" ), "r").read
	    end
		end
    
  end
end
