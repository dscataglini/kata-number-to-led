class NumberToLcd

  def self.convert(this_number)
    LCDNumber.convert(this_number)
  end
  
  class LCDNumber
    PATTERNS = {:none => "   ", :right => "  |",  :middle => " - ", :sides => "| |", :left => "|  "}
    PROTOS = {"1" => [:none,    :right,   :none,    :right,   :none], 
              "2" => [:middle,  :right,   :middle,  :left,    :middle],
              "3" => [:middle,  :right,   :middle,  :right,   :middle],
              "4" => [:none,    :sides,   :middle,  :right,   :none],
              "5" => [:middle,  :left,    :middle,  :right,   :middle],
              "6" => [:middle,  :left,    :middle,  :sides,   :middle],
              "7" => [:middle,  :right,   :none,    :right,   :none],
              "8" => [:middle,  :sides,   :middle,  :sides,   :middle],
              "9" => [:middle,  :sides,   :middle,  :right,   :middle],
              "0" => [:middle,  :sides,   :none,    :sides,   :middle]
              }
		class << self
	    def convert(number)
	      protos = number.to_s.chars.to_a.map{|num| PROTOS[num] }
	      number_definitions_in_order = protos.shift.zip(*protos)
				number_definitions_in_order.inject(""){ |str, row| str << protos_to_pattern( *row ) }.chop
	    end
    
	    private
    
	    def protos_to_pattern(*protos)
	      protos.map do |el| 
	        PATTERNS[el]
	      end.join(" ") << "\n"
	    end
		end
    
  end
end
