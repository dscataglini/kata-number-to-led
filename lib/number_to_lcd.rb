class NumberToLcd
  LCD_NUMBERS = [
      [" - ", "| |", "   ", "| |", " - "],
      ["   ", "  |", "   ", "  |", "   "],
      [" - ", "  |", " - ", "|  ", " - "],
      [" - ", "  |", " - ", "  |", " - "],
      ["   ", "| |", " - ", "  |", "   "],
      [" - ", "|  ", " - ", "  |", " - "],
      [" - ", "|  ", " - ", "| |", " - "],
      [" - ", "  |", "   ", "  |", "   "],
      [" - ", "| |", " - ", "| |", " - "],
      [" - ", "| |", " - ", "  |", " - "]
    ]
    
  class << self
    def convert( number )
      lcd_numbers = fetch_chars( number )
      lcd_numbers.map{|row| row.join(" ") << "\n"}.to_s.chop
    end
  
    private 
    def number_to_digits( number )
      number.to_s.split("")
    end
    
    def fetch_chars( number )
      lcd_numbers = Array.new( 5 ){[]}
      digits = number_to_digits( number )
      digits.each do |digit|
        5.times do |row|
          lcd_numbers[row] << LCD_NUMBERS[digit.to_i][row]
        end
      end
      lcd_numbers
    end
  end
  
end
