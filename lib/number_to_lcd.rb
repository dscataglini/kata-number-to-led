class NumberToLcd
  LCD_NUMBERS = [
       [" - ","   "," - "," - ","   "," - "," - "," - "," - "," - "],
       ["| |","  |","  |","  |","| |","|  ","|  ","  |","| |","| |"],
       ["   ","   "," - "," - "," - "," - "," - ","   "," - "," - "],
       ["| |","  |","|  ","  |","  |","  |","| |","  |","| |","  |"],
       [" - ","   "," - "," - ","   "," - "," - ","   "," - "," - "],
      ]
    
  def self.convert( this_number )
    digits = number_to_digits( this_number )
    lcd_number = ""
    5.times do |row|
      lcd_number << digits.map do |digit|
         LCD_NUMBERS[row][digit.to_i]
      end.join(" ") + "\n"
    end
    lcd_number.chop
  end
  
  private 
  def self.number_to_digits( number )
    number.to_s.split("")
  end
end
