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
				transpose(lcd_numbers)
	    end
	
			private
			def transpose(lcd_numbers)
				lcd_numbers.transpose.map{|row| add_padding_and_displace_carriage_return( row ) }.to_s.chop
			end
			def add_padding_and_displace_carriage_return(row)
				row.join(" ").gsub(/\n/, '') + "\n"
			end
			
			def to_string_array(number)
				number.to_s.split("")
			end
			
			def digit_reppresentation(digit)
				File.open( File.expand_path(File.dirname(__FILE__) + "/samples/#{digit}.txt" ), "r").read.lines.to_a
			end
		end
    
  end
end
