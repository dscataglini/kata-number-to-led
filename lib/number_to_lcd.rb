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
      lcd_number << compose_row(row, digits)
    end
    lcd_number.chop
  end
  
  private 
  def self.compose_row(row, digits)
    digits.map do |digit|
       LCD_NUMBERS[row][digit]
    end.join(" ") + "\n"
  end
  
  def self.number_to_digits( number )
    number.to_s.split("").map{|digit| digit.to_i}
  end
end
