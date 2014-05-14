class PrimeFactors  
  def self.for(number)
    factor = 2
    return_value = []
    until number < factor
      div, mod = number.divmod(factor)
      if mod == 0
        return_value << factor
        number = div
      else
        factor += 1
      end
    end
    return_value
  end

end