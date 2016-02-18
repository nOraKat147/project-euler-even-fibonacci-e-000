# Implement your procedural solution here!

def even_sum(arr)
  sum = 0
  arr.each do |a|
    if a % 2 == 0
      sum+=a
    end
  end
  return sum
end

def even_fibonacci_sum(int)
  fib_seq = [1, 2]
  last_2_sum = 3
  while last_2_sum <= int
    fib_seq.push(last_2_sum)
    last_2_sum = fib_seq[-1] + fib_seq[-2]
  end
  p fib_seq
  return even_sum(fib_seq)
end

p even_fibonacci_sum(7)