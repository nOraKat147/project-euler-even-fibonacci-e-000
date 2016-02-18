class EvenFibonacci

  def initialize(int)
    @int = int
    @fib_seq = [1, 2]
  end

  def sum
    last_2_sum = 3
    while last_2_sum <= @int
      @fib_seq.push(last_2_sum)
      last_2_sum = @fib_seq[-1] + @fib_seq[-2]
    end
    p @fib_seq
    return even_sum
  end

  def even_sum
    sum = 0
    @fib_seq.each do |a|
      if a % 2 == 0
        sum += a
      end
    end
    return sum
  end

end #EvenFibonacci


p EvenFibonacci.new(100).sum
