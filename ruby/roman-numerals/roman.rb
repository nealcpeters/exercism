class Fixnum

  def roman 
    {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I',
    }
  end

  def to_roman
    integer = self
    answer = ""
    roman.each do |arabic, roman|
      while integer >= arabic
        answer << roman
        integer -= arabic
      end
    end
    answer
  end
end
