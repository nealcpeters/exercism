class Squares

  def initialize(integer)
    @integer = integer
  end

  def square_of_sums
    (1..@integer).inject(:+) ** 2
  end

  def sum_of_squares
    (0..@integer).inject {|sum, n| sum + n ** 2}
  end

  def difference
    square_of_sums - sum_of_squares
  end
end