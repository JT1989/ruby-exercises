 # Method name: factorial
# Inputs:      A single non-negative integer, n
# Returns:     The factorial of n (see below)
# Prints:      Nothing


def factorial(n)
  if n == 0
    return 1
  else
    return n * factorial(n - 1)
  end
end

if __FILE__ == $0
  # What are the common cases?  What are the corner cases?
  # Your sanity checks should look like
  #   p factorial(input) == ...expected return value...
  p factorial(4) == 24
  p factorial(2) == 2
  p factorial(0) == 1
  p factorial(10) == 3628800
  # 10! = 10*9*8*7*6*5*4*3*2*1
end

# #Notes to self
# N! = N × (N‐1) × (N‐2) × … × 1
# 5! =       5 × 4 × 3 × 2 × 1
# 6! = 6 × 5 × 4 × 3 × 2 × 1
# 6! = 6 × 5!
# 5! = 5 × 4!
# 4! = 4 × 3!
# base case?   0! = 1