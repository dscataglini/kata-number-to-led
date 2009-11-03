class NumberToLcd

  def self.convert(this_number)
    LCDNumber.convert(this_number)
  end
  
  class LCDNumber
		class << self
	    def convert(number)
				numbers = to_string_array(number)
				lcd_numbers = numbers.map do |digit| 
					digit_reppresentation(digit)
				end
				return lcd_numbers.join.chop if number < 10
	    end
	
			private
			def to_string_array(number)
				number.to_s.split("")
			end
			
			def digit_reppresentation(digit)
				File.open( File.expand_path(File.dirname(__FILE__) + "/samples/#{digit}.txt" ), "r").read.lines.to_a
			end
		end
    
  end
end
